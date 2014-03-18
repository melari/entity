class LiteralEval < ExpressionEval
  def initialize(type, value)
    @type = type
    @value = value
  end

  def type
    @type
  end

  def path_name
    type
  end

  def eval
    output_value = type == :string ? "(string)#{@value}" : @value
    "#{@type.capitalize}Class::_new(#{output_value})"
  end
end