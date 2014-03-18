class VariableAssignmentStatementEval < StatementEval
  def initialize(variable_path_eval, expression_eval, type)
    @variable_path_eval = variable_path_eval
    @expression_eval = case type
    when '='
      expression_eval
    when '+='
      DoubleOperandExpressionEval.new('+', @variable_path_eval, expression_eval)
    when '-='
      DoubleOperandExpressionEval.new('-', @variable_path_eval, expression_eval)
    when '*='
      DoubleOperandExpressionEval.new('*', @variable_path_eval, expression_eval)
    when '/='
      DoubleOperandExpressionEval.new('/', @variable_path_eval, expression_eval)
    end
  end

  def required_variables
    return [] unless @variable_path_eval.is_local?
    [{
      :name => @variable_path_eval.name,
      :type => @expression_eval.type
    }]
  end

  def eval
    variable_path = Entity::Compiler.capture { @variable_path_eval.eval }
    expression = Entity::Compiler.capture { @expression_eval.eval }
    Entity::Compiler.out("#{variable_path} = #{expression};")
  end
end
