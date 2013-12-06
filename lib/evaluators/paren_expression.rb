class ParenExpressionEval < ExpressionEval
  def initialize(inner_expression_eval)
    @inner_expression_eval = inner_expression_eval
  end

  def type
    @inner_expression_eval.type
  end

  def eval
    "(#{@inner_expression_eval.eval})"
  end
end
