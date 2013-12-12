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

  def eval
    @constructor = nil
    @default_constructor_found = false

    FunctionDefinitionEval.add_constructor(@name)

    Entity::Compiler.out("class #{@name} {")
    Entity::Compiler.out("public:")
    body_components.delete_if do |body|
      if body.is_a? ConstructorDefinitionEval
        @constructor = body
        @default_constructor_found = (body.arguments.count == 0)
        Entity::Compiler.out("#{body.prototype(@name)};")
        false
      elsif body.is_a? FunctionDefinitionEval
        Entity::Compiler.out("#{body.prototype(nil, true)};")
        false
      elsif body.is_a? InstanceVariableDeclarationEval
        body.eval
        true
      end
    end
    Entity::Compiler.out("#{@name}();") unless @default_constructor_found
    Entity::Compiler.out("static #{@name} _new(#{constructor_argument_string});")
    Entity::Compiler.out("};");
    Entity::Compiler.out("#{@name}::#{@name}(){}") unless @default_constructor_found
    Entity::Compiler.out("#{@name} #{@name}::_new(#{constructor_argument_string}) { #{@name} x#{constructor_argument_call_string}; return x; }")
    evaluate_body(@name)
  end
end
