class InstanceVariableDeclarationEval < Evaluator
  def initialize(type, first)
    @type = type
    @variable_names = [first]
  end

  def add_chained_variable(name)
    @variable_names << name
  end

  def eval
    @variable_names.each do |var|
      Entity::Compiler.out("#{@type} #{var};")
    end
  end
end
