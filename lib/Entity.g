grammar Entity;

options { language = Ruby; }

file returns[value]
  : NL? { $value = DefinitionListEval.new }
  (a=definition { $value.add_definition(a) })*
  ;

definition returns[value]
  : a=( entity
  | component
  | system
  | enum
  | function_definition
  ) NL? { $value = a }
  ;

entity returns[value]
  : ENTITY name=IDENT { $value = EntityEval.new($name.text) }
  ( CLOSE | NL (a=class_body { $value.add_body(a) })* CLOSE )
  ;

class_body returns[value]
  : a=( instance_variable_declaration
  | constructor_definition
  | function_definition
  | component_reference
  ) NL? { $value = a }
  ;

instance_variable_declaration returns[value]
  : type=variable_type a=IDENT { $value = InstanceVariableDeclarationEval.new(type, $a.text) }
  (',' a=IDENT { $value.add_chained_variable($a.text) } )*
  ;

component_reference
  : '-' IDENT NL
  ;

constructor_definition returns[value]
  : INIT { $value = ConstructorDefinitionEval.new }
  ( '(' (
    type=variable_type name=IDENT { $value.add_argument(type, $name.text) }
    (',' type=variable_type name=IDENT { $value.add_argument(type, $name.text) } )*
  )? ')' )?
  ( CLOSE | NL (a=statement { $value.add_statement(a) })* CLOSE )
  ;

function_definition returns[value]
  : OPEN type=variable_type name=IDENT { $value = FunctionDefinitionEval.new($name.text, type) }
  ( '(' (
    type=variable_type name=IDENT { $value.add_argument(type, $name.text) }
    (',' type=variable_type name=IDENT { $value.add_argument(type, $name.text) } )*
  )? ')' )?
  ( CLOSE | NL (a=statement { $value.add_statement(a) } )* CLOSE )
  ;

variable_type returns[value]
  : ( a=( TYPE_FLOAT
        | TYPE_INT
        | TYPE_BOOL
        | TYPE_STRING
        ) { $value = $a.text.capitalize }
    )
  | ( a=( TYPE_VOID
        | IDENT
        ) { $value = $a.text }
  )
  ;

statement returns[value]
  : a=( if_statement
  | while_statement
  | return_statement
  | (function_call_statement assignment_type)=> variable_assignment_statement
  | function_call_statement
  ) NL*
  { $value = a }
  ;

if_statement returns[value]
  : IF a=expression { $value = IfStatementEval.new(a) }
  ( CLOSE | NL (b=statement { $value.add_statement(b) } )* CLOSE )
  ;

while_statement returns[value]
  : WHILE a=expression { $value = WhileStatementEval.new(a) }
  ( CLOSE | NL (b=statement { $value.add_statement(b) } )* CLOSE )
  ;

return_statement returns[value]
  : RETURN a=expression { $value = ReturnStatementEval.new(a) }
  ;

variable_assignment_statement returns[value]
  :  a=function_call_statement type=assignment_type b=expression { $value = VariableAssignmentStatementEval.new(a, b, type) }
  ;

assignment_type returns[value]
  : type=('=' | '+=' | '-=' | '*=' | '/=') { $value = $type.text }
  ;

function_call_statement returns[value]
  : name=IDENT args=function_arguments? chain=function_call_statement_float
    {
      $value = FunctionCallStatementEval.new($name.text, args)
      $value.chain = chain unless chain.nil?
    }
  ;

function_call_statement_float returns[value]
  : relation_type=('.' | '::') name=IDENT args=function_arguments? chain=function_call_statement_float
    {
      $value = FunctionCallStatementEval.new($name.text, args)
      $value.relation_type = $relation_type.text
      $value.chain = chain unless chain.nil?
    }
  | /* epsilon */ { $value = nil }
  ;

function_arguments returns[value]
  : '(' { $value = [] } ( b=expression { $value << b } ( ',' b=expression { $value << b } )* )? ')'
  ;

component
  : COMPONENT IDENT
  ( CLOSE | NL class_body* CLOSE )
  ;

system
  : SYSTEM IDENT
  ( CLOSE | NL class_body* CLOSE )
  ;

enum
  : ENUM IDENT
  ( CLOSE | NL class_body* CLOSE )
  ;

literal returns[value]
  : a=INTEGER { $value = LiteralEval.new(:Int, $a.text) }
  | a=FLOAT   { $value = LiteralEval.new(:Float, $a.text) }
  | a=BOOLEAN { $value = LiteralEval.new(:Bool, $a.text) }
  | a=STRING  { $value = LiteralEval.new(:String, $a.text) }
  | a=CHAR    { $value = LiteralEval.new(:Char, $a.text) }
  ;

term returns[value]
  : b=literal { $value = b }
  | b=function_call_statement { $value = b }
  | '(' b=expression ')' { $value = ParenExpressionEval.new(b) }
  ;

negation returns[value]
  : '!' a=negation { $value = SingleOperandExpressionEval.new('!', a) }
  | a=term { $value=a }
  ;

unary returns[value]
  : type=('+' | '-') a=unary { $value = SingleOperandExpressionEval.new($type.text, a) }
  | a=negation { $value=a }
  ;

mult returns[value]
  : a=unary { $value = a }
  ( type=('*' | '/' | '%' | '^') b=mult  { $value = DoubleOperandExpressionEval.new($type.text, a, b) } )?
  ;

add returns[value]
  : a=mult { $value = a }
  (  type=('+' | '-') b=add
     { $value = DoubleOperandExpressionEval.new($type.text, a, b) }
  )?
  ;

relation returns[value]
  : a=add { $value = a }
  (  type=('==' | '!=' | '<' | '<=' | '>=' | '>') b=relation
     { $value = DoubleOperandExpressionEval.new($type.text, a, b) }
  )?
  ;

expression returns[value]
  : a=relation { $value = a }
  (  type=('&&' | '||') b=expression
     { $value = DoubleOperandExpressionEval.new($type.text, a, b) }
  )?
  ;

INTEGER: ('0' .. '9')+;
FLOAT: INTEGER '.' INTEGER;
BOOLEAN: 'true' | 'false';
STRING
  : '"'
    ( '\\' '"'
    | ~('"'|'\r'|'\n')
    )*
    '"'
  ;

CHAR
  : '\'' . '\''
  ;

INIT: 'init';
OPEN: 'def';
CLOSE: 'end';

TYPE_INT: 'int';
TYPE_FLOAT: 'float';
TYPE_STRING: 'string';
TYPE_BOOL: 'bool';
TYPE_VOID: 'void';

ENTITY: 'entity';
COMPONENT: 'component';
SYSTEM: 'system';
ENUM: 'enum';

IF: 'if';
ELSE: 'else';
RETURN: 'return';
WHILE: 'while';

IDENT: ('a' .. 'z' | 'A' .. 'Z' | '_') ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_')*;
WS: (' ' | '\t')+ {$channel = HIDDEN};
COMMENT : '//' .* ('\n'|'\r') {$channel = HIDDEN;};
MULTILINE_COMMENT : '/*' .* '*/' {$channel = HIDDEN;} ;
NL: '\n'+;
