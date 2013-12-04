require_relative 'evaluator.rb'

class ExpressionEval < Evaluator
  def type
    :void
  end

  def eval
    nil
  end
end
