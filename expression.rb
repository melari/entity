class ExpressionEval < Evaluator
  def initialize(digit)
    @digit = digit
  end

  def eval
    puts @digit
  end
end
