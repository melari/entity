class VariablePathEval < ExpressionEval
  def initialize(base)
    @path = base
    @is_local = true
  end

  def add_path(path)
    path = "::_new" if path == ".new"
    @path += "#{path}"
    @is_local = false
  end

  def is_local?
    @is_local
  end

  def type

  end

  def eval
    @path
  end
end
