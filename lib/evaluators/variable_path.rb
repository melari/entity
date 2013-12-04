class VariablePathEval < Evaluator
  def initialize(base)
    @path = base
    @is_local = true
  end

  def add_path(path)
    @path += "#{path}"
    @is_local = false
  end

  def is_local?
    @is_local
  end

  def eval
    @path
  end
end