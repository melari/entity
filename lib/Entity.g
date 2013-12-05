grammar Entity;

options { language = Ruby; }

file returns[value]
  : //NL? definition*
  a=function_definition { $value = a}
  ;

definition
  : ( entity
  | component
  | system
  | enum
  ) NL?
  ;

entity
  : ENTITY IDENT
  ( CLOSE | NL class_body* CLOSE )
  ;

class_body
  : ( function_definition
  | component_reference
  ) NL?
  ;

component_reference
  : '-' IDENT NL
  ;

function_definition returns[value]
  : OPEN name=IDENT { $value = FunctionDefinitionEval.new($name.text) }
  ( CLOSE | NL (a=statement { $value.add_statement(a) } )* CLOSE )
  ;

statement returns[value]
  : a=( if_statement
  | return_statement
  | variable_assignment_statement
  | function_call_statement
  ) NL?
  { $value = a }
  ;

if_statement returns[value]
  : IF a=expression { $value = IfStatementEval.new(a) }
  ( CLOSE | NL (b=statement { $value.add_statement(b) } )* CLOSE )
  ;

return_statement
  : RETURN expression
  ;

variable_assignment_statement returns[value]
  : a=variable_path '=' b=expression { $value = VariableAssignmentStatementEval.new(a, b) }
  ;

function_call_statement returns[value]
  : a=variable_path '(' { $value = FunctionCallStatementEval.new(a) } 
  ( b=expression { $value.add_argument(b) }
    (  ',' b=expression { $value.add_argument(b) }
    )*
  )? ')'
  ;

variable_path returns[value]
  : base=IDENT { $value = VariablePathEval.new($base.text) }
  (path1=('.' | '::') path2=IDENT { $value.add_path($path1.text + $path2.text) } )*
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

term returns[value]
  : variable_path
  | function_call_statement
  | '(' expression ')'
  | a=INTEGER { $value = LiteralEval.new(:int, $a.text) }
  | a=FLOAT   { $value = LiteralEval.new(:float, $a.text) }
  | a=BOOLEAN { $value = LiteralEval.new(:bool, $a.text) }
  | a=STRING  { $value = LiteralEval.new(:string, $a.text) }
  | a=CHAR    { $value = LiteralEval.new(:char, $a.text) }
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
  ( type=('*' | '/' | '%') b=mult  { $value = DoubleOperandExpressionEval.new($type.text, a, b) } )?
  ;
  
add returns[value]
  : a=mult { $value = a }
  (  type=('+' | '-') b=add
     { $value = DoubleOperandExpressionEval.new($type.text, a, b) }
  )?
  ;

relation returns[value]
  : a=add { $value = a }
  (  type=('=' | '/=' | '<' | '<=' | '>=' | '>') b=relation
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

OPEN: 'def';
CLOSE: 'end';

ENTITY: 'entity';
COMPONENT: 'component';
SYSTEM: 'system';
ENUM: 'enum';

IF: 'if';
ELSE: 'else';
RETURN: 'return';

IDENT: ('a' .. 'z' | 'A' .. 'Z') ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_')*;
WS: (' ' | '\t')+ {$channel = HIDDEN};
COMMENT : '//' .* ('\n'|'\r') {$channel = HIDDEN;};
MULTILINE_COMMENT : '/*' .* '*/' {$channel = HIDDEN;} ;
NL: '\n'+;
