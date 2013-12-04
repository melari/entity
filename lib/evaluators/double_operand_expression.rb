require_relative 'expression.rb'

class DoubleOperandExpressionEval < ExpressionEval
  def initialize(operand_type, lh_expression_eval, rh_expression_eval)
    @operand_type = operand_type
    @lh_expression_eval = lh_expression_eval
    @rh_expression_eval = rh_expression_eval
  end

  def type
    if ['+', '-', '*', '/', '%'].include? @operand_type
      if @lh_expression_eval.type == :float || @rh_expression_eval.type == :float
        :float
      else
        :int
      end
    else
      :bool
    end
  end

  def eval
    "#{@lh_expression_eval.eval}#{@operand_type}#{@rh_expression_eval.eval}"
  end
end