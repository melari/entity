require_relative 'statement_list_helper.rb'

class FunctionDefinitionEval < Evaluator
  include StatementList

  def initialize(name)
    @name = name
  end

  def eval
    Entity::Compiler.out("#{return_type} #{@name}() {")
    used_variables = []
    required_variables.each do |variable|
      Entity::Compiler.out("#{variable[:type]} #{variable[:name]};")
    end
    evaluate_statements
    Entity::Compiler.out("return 0;") if is_main?
    Entity::Compiler.out("}")
  end

  private

  def is_main?
    @name == "main"
  end

  def return_type
    return :int if is_main?
    :void
  end
end
