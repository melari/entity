require_relative 'statement.rb'

class IfStatementEval < StatementEval
  include StatementList

  def initialize(expression_eval)
    @expression_eval = expression_eval
  end

  def eval
    Entity::Compiler.out("if (#{@expression_eval.eval}){")
    evaluate_statements
    Entity::Compiler.out("}")
  end
end