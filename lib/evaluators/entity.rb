class EntityEval < Evaluator
  include StatementList

  alias_method :body_components, :statements
  alias_method :add_body, :add_statement
  alias_method :evaluate_body, :evaluate_statements_with_args

  def initialize(name)
    @name = name
  end

  def eval
    FunctionDefinitionEval.add_constructor(@name)

    Entity::Compiler.out("class #{@name} {")
    Entity::Compiler.out("public:")
    Entity::Compiler.out("static #{@name} _new();")
    body_components.each do |body|
      # TODO: Assuming only function definitions for now... Need to add component refs still
      Entity::Compiler.out("#{body.prototype};")
    end
    Entity::Compiler.out("};");
    Entity::Compiler.out("#{@name} #{@name}::_new() { #{@name} x; return x; }")
    evaluate_body(@name)
  end
end
