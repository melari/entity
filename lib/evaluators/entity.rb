class EntityEval < Evaluator
  include StatementList

  alias_method :body_components, :statements
  alias_method :add_body, :add_statement
  alias_method :evaluate_body, :evaluate_statements_with_args

  def initialize(name)
    @name = name
  end

  def constructor_argument_string
    return '' if @constructor.nil?
    @constructor.argument_string
  end

  def constructor_argument_call_string
    return '' if @constructor.nil? || @constructor.arguments.length == 0
    joined = @constructor.arguments.map { |arg| arg[1] }.join(',')
    "(#{joined})"
  end

  def register_types(klass)
    TypeRegister.current_class_context = @name
    body_components.each { |c| c.register_types(@name) }
  end

  def register_function_types(klass)
    TypeRegister.current_class_context = @name
    TypeRegister.register_class(@name)
    body_components.each { |c| c.register_function_types(@name) }
  end

  def eval_forward_prototype
    Entity::Compiler.out("class #{@name}Class;")
    Entity::Compiler.out("typedef shared_ptr<#{@name}Class> #{@name};")
  end

  def eval_prototype
    TypeRegister.current_class_context = @name

    @constructor = nil
    @default_constructor_found = false

    Entity::Compiler.out("class #{@name}Class {")
    Entity::Compiler.out("public:")
    body_components.delete_if do |body|
      if body.is_a? ConstructorDefinitionEval
        @constructor = body
        @default_constructor_found = (body.arguments.count == 0)
        Entity::Compiler.out("#{body.prototype(@name)};")
        false
      elsif body.is_a? FunctionDefinitionEval
        TypeRegister.current_function_context = body.name(nil)
        Entity::Compiler.out("#{body.prototype(nil, true)};")
        false
      elsif body.is_a? InstanceVariableDeclarationEval
        body.eval
        true
      end
    end
    Entity::Compiler.out("#{@name}Class();") unless @default_constructor_found
    Entity::Compiler.out("static #{@name} _new(#{constructor_argument_string});")
    Entity::Compiler.out("};");
  end

  def eval
    TypeRegister.current_class_context = @name

    Entity::Compiler.out("#{@name}Class::#{@name}Class(){}") unless @default_constructor_found
    Entity::Compiler.out("#{@name} #{@name}Class::_new(#{constructor_argument_string}) { #{@name} x(new #{@name}Class#{constructor_argument_call_string}); return x; }")
    evaluate_body(@name)
  end
end
