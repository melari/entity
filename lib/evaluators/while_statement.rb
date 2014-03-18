require_relative 'statement.rb'

class WhileStatementEval < StatementEval
  include StatementList

  def initialize(expression_eval)
    @expression_eval = expression_eval
  end

  def eval
    Entity::Compiler.out("while (#{@expression_eval.eval}->value){")
    evaluate_statements
    Entity::Compiler.out("}")
  end
end