require_relative 'statement_list_helper.rb'

class FunctionDefinitionEval < Evaluator
  include StatementList

  def initialize(name, type)
    @name = name
    @type = type
  end

  def arguments
    @arguments ||= []
  end

  def add_argument(type, name)
    arguments << [type, name]
  end

  def name(klass = nil)
    klass.nil? ? @name : "#{klass}Class::#{@name}"
  end

  def prototype(klass = nil, ignore_main = false)
    "#{return_type(klass, ignore_main)} #{name(klass)}(#{argument_string})"
  end

  def argument_string
    arguments.map { |arg| "#{arg[0]} #{arg[1]}"}.join(',')
  end

  def register_types(klass)
    puts "REGISTERING #{@name}"
    TypeRegister.current_class_context = klass
    TypeRegister.current_function_context = @name

    arguments.each do |arg|
      TypeRegister.register_local_variable(klass, @name, arg[1], arg[0])
    end

    for_each_required_variable do |variable|
      TypeRegister.register_local_variable(klass, @name, variable[:name], variable[:type])
    end
  end

  def register_function_types(klass)
    TypeRegister.current_class_context = klass
    TypeRegister.current_function_context = @name
    TypeRegister.register_function(klass, @name, return_type(klass, false))
  end

  def eval_forward_prototype
    nil # This only gets called on functions outside of classes.
  end

  def eval_prototype
    nil # This only gets called on functions outside of classes.
  end

  def eval(klass = nil)
    TypeRegister.current_class_context = klass
    TypeRegister.current_function_context = @name

    Entity::Compiler.out("#{prototype(klass)} {")
    generate_body
    Entity::Compiler.out("return 0;") if is_main?(klass)
    Entity::Compiler.out("}")
  end

  protected

  def generate_body
    for_each_required_variable do |variable|
      Entity::Compiler.out("#{variable[:type]} #{variable[:name]};")
    end
    evaluate_statements
  end

  private

  def is_main?(klass)
    @name == "main" && klass.nil?
  end

  def return_type(klass, ignore_main)
    !ignore_main && is_main?(klass) ? 'int' : @type
  end
end
