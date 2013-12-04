class VariableAssignmentStatementEval < StatementEval
  def initialize(variable_path_eval, expression_eval)
    @variable_path_eval = variable_path_eval
    @expression_eval = expression_eval
  end

  def required_variables
    return [] unless @variable_path_eval.is_local?
    [{
      :name => @variable_path_eval.eval,
      :type => @expression_eval.type
    }]
  end

  def eval
    Entity::Compiler.out("#{@variable_path_eval.eval} = #{@expression_eval.eval};")
  end
end