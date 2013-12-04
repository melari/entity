require_relative 'statement.rb'

class FunctionCallStatementEval < StatementEval
  def initialize(variable_path_eval)
    @variable_path_eval = variable_path_eval
    @arguments = []
  end

  def add_argument(expression)
    @arguments << expression
  end

  def eval
    Entity::Compiler.out(
      "#{@variable_path_eval.eval}(" +
      @arguments.map { |arg| arg.eval }.join(',') +
      ");"
    )
  end
end