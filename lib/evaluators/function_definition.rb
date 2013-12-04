require_relative 'statement_list_helper.rb'

class FunctionDefinitionEval < Evaluator
  include StatementList

  def initialize(name)
    @name = name
  end

  def eval
    Entity::Compiler.out("void #{@name}() {")
    used_variables = []
    required_variables.each do |variable|
      Entity::Compiler.out("#{variable[:type]} #{variable[:name]};")
    end
    evaluate_statements
    Entity::Compiler.out("}")
  end
end