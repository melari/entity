require_relative 'statement_list_helper.rb'

class FunctionDefinitionEval < Evaluator
  include StatementList

  @@function_types = {}

  def self.type_of(name)
    @@function_types[name]
  end

  def self.add_constructor(class_name)
    @@function_types["#{class_name}::_new"] = class_name
  end

  def initialize(type, name)
    @type = type
    @name = name
  end

  def name(klass = nil)
    klass.nil? ? @name : "#{klass}::#{@name}"
  end

  def prototype(klass = nil)
    "#{return_type(klass)} #{name(klass)}()"
  end

  def eval(klass = nil)
    @@function_types[name(klass)] = @type

    Entity::Compiler.out("#{prototype(klass)} {")
    used_variables = []
    required_variables.each do |variable|
      Entity::Compiler.out("#{variable[:type]} #{variable[:name]};")
    end
    evaluate_statements
    Entity::Compiler.out("return 0;") if is_main?(klass)
    Entity::Compiler.out("}")
  end

  private

  def is_main?(klass)
    @name == "main" && klass.nil?
  end

  def return_type(klass)
    is_main?(klass) ? 'int' : @type
  end
end
