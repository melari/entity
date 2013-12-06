class ReturnStatementEval < StatementEval
  def initialize(expression)
    @expression = expression
  end

  def eval
    Entity::Compiler.out("return #{@expression.eval};")
  end
end
