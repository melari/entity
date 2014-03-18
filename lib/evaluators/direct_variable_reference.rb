require_relative 'expression.rb'

class DirectVariableReferenceEval < ExpressionEval
  def initialize(name)
    @name = name
  end

  def path_name
    @name
  end

  def eval
    @name
  end
end
