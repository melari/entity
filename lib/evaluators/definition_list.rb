require_relative 'evaluator.rb'
require_relative 'statement_list_helper.rb'

class DefinitionListEval < Evaluator
  include StatementList

  alias_method :evaluate_definitions, :evaluate_statements
  alias_method :add_definition, :add_statement

  def eval
    evaluate_definitions
  end
end
