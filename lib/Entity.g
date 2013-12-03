grammar Entity;

options { language = Ruby; }

expression returns[value]
  : d=DIGIT { $value=ExpressionEval.new($d.text) }
  ;

DIGIT: '0' .. '9';
