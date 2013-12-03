grammar Entity;

options { language = Ruby; }

file
  : NL? definition*
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
  : MINUS IDENT NL
  ;

function_definition
  : OPEN IDENT
  ( CLOSE | NL statement* CLOSE )
  ;

statement
  : ( if_statement
  | DIGIT
  ) NL?
  ;

if_statement
  : IF expression
  ( CLOSE | NL statement* CLOSE )
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


expression returns[value]
  : d=DIGIT { $value=ExpressionEval.new($d.text) }
  ;

DIGIT: '0' .. '9';
TRUE: 'true';
FALSE: 'false';

OPEN: 'def';
CLOSE: 'end';

ENTITY: 'entity';
COMPONENT: 'component';
SYSTEM: 'system';
ENUM: 'enum';

IF: 'if';
ELSE: 'else';

MINUS: '-';

IDENT: ('a' .. 'z' | 'A' .. 'Z') ('a' .. 'z' | 'A' .. 'Z' | DIGIT | '_')*;
WS: (' ' | '\t')+ {$channel = HIDDEN};
NL: '\n'+;
