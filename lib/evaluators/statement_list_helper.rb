module StatementList
  def statements
    @statements ||= []
  end

  def add_statement(statement)
    statements << statement
  end

  def required_variables
    used = []
    result = []
    statements.each do |statement|
      statement.required_variables.each do |variable|
        next if used.include? variable[:name]
        used << variable[:name]
        result << variable
      end
    end
    result
  end

  def evaluate_statements
    statements.each { |statement| statement.eval }
  end
end