require_relative 'evaluator.rb'
require_relative 'function_definition.rb'

class ConstructorDefinitionEval < FunctionDefinitionEval
  include StatementList

  def initialize
  end

  def prototype(klass)
    "#{klass}(#{argument_string})"
  end

  def eval(klass)
    Entity::Compiler.out("#{klass}::#{prototype(klass)} {")
    generate_body
    Entity::Compiler.out("}");
  end
end
