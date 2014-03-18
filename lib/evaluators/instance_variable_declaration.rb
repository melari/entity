class InstanceVariableDeclarationEval < Evaluator
  def initialize(type, first)
    @type = type
    @variable_names = [first]
  end

  def add_chained_variable(name)
    @variable_names << name
  end

  def register_types(klass)
    @variable_names.each { |var| TypeRegister.register_instance_variable(klass, var, @type) }
  end

  def eval
    @variable_names.each do |var|
      Entity::Compiler.out("#{@type} #{var};")
    end
  end
end
