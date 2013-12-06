require_relative 'statement.rb'

# Function calls are both statements and expressions
class FunctionCallStatementEval < StatementEval
  def initialize(variable_path_eval)
    @variable_path_eval = variable_path_eval
    @arguments = []
  end

  def add_argument(expression)
    @arguments << expression
  end

  def type
    FunctionDefinitionEval.type_of(@variable_path_eval.eval)
  end

  def eval
    argument_string = @arguments.map do |arg|
      Entity::Compiler.capture { arg.eval }
    end.join(',')

    semi = Entity::Compiler.capturing? ? '' : ';'

    Entity::Compiler.out("#{@variable_path_eval.eval}(#{argument_string})#{semi}")
  end
end
