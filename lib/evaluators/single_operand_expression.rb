class SingleOperandExpressionEval < ExpressionEval
  def initialize(operand_type, expression_eval)
    @operand_type = operand_type
    @expression_eval = expression_eval
  end

  def type
    @operand_type == '!' ? :bool : @expression_eval.type
  end

  def eval
    "#{@operand_type}#{@expression_eval.eval}"
  end
end