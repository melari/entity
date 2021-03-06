module StatementList
  def statements
    @statements ||= []
  end

  def add_statement(statement)
    statements << statement
  end

  def for_each_required_variable
    used = []
    result = []
    statements.each do |statement|
      statement.required_variables.each do |variable|
        next if used.include? variable[:name]
        used << variable[:name]
        result << variable
        yield(variable)
      end
    end
    result
  end

  def evaluate_statements
    statements.each { |statement| statement.eval }
  end

  def evaluate_statements_with_args(*args)
    statements.each { |statement| statement.eval(*args) }
  end
end
