require_relative 'evaluator.rb'
require_relative 'function_definition.rb'

class ConstructorDefinitionEval < FunctionDefinitionEval
  include StatementList

  def initialize
  end

  def prototype(klass)
    "#{klass}Class(#{argument_string})"
  end

  def eval(klass)
    TypeRegister.current_class_context = klass
    TypeRegister.current_function_context = nil
    Entity::Compiler.out("#{klass}Class::#{prototype(klass)} {")
    generate_body
    Entity::Compiler.out("}");
  end
end
