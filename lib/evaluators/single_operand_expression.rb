class SingleOperandExpressionEval < ExpressionEval
  @@operand_map = {
    '!' => 'op_not',
    '-' => 'op_negate',
    '+' => 'noop'
  }
  def initialize(operand_type, expression_eval)
    @operand_type = operand_type
    @expression_eval = expression_eval
  end

  def type
    @operand_type == '!' ? :bool : @expression_eval.type
  end

  def eval
    "#{@expression_eval.eval}->#{@@operand_map[@operand_type]}()"
  end
end