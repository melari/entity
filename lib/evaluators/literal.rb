class LiteralEval < ExpressionEval
  def initialize(type, value)
    @type = type
    @value = value
  end

  def type
    @type
  end

  def eval
    return "(string)#{@value}" if type == :string
    @value
  end
end