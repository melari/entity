class ReturnStatementEval < StatementEval
  attr_reader :expression
  
  def initialize(expression)
    @expression = expression
  end

  def eval
  	exp = Entity::Compiler.capture { @expression.eval }
    Entity::Compiler.out("return #{exp};")
  end
end
