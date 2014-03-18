require_relative 'evaluator.rb'
require_relative 'statement_list_helper.rb'

class DefinitionListEval < Evaluator
  include StatementList

  alias_method :definitions, :statements
  alias_method :evaluate_definitions, :evaluate_statements
  alias_method :add_definition, :add_statement

  def register_types(klass)
  	definitions.each { |d| d.register_types(klass) }
  end

  def register_function_types(klass)
  	definitions.each { |d| d.register_function_types(klass) }
  end

  def eval
    definitions.each { |d| d.eval_forward_prototype }
    definitions.each { |d| d.eval_prototype }
    evaluate_definitions
  end
end
