class TypeRegister
	@@types = {}

  @@current_class_context = nil
  @@current_function_context = nil

	def self.register_instance_variable(klass, name, type)
		@@types["#{klass}::#{name}"] = type
	end

  def self.register_class_variable(klass, name, type)
    @@types["Class::#{klass}::#{name}"] = type
  end

  def self.register_local_variable(klass, function, name, type)
    @@types["#{klass}::#{function}::#{name}"] = type
  end

  def self.register_function(klass, name, type)
    @@types["#{klass}::#{name}()"] = type
  end

  def self.register_class(klass)
    self.register_class_variable(klass, "_new()", klass)
    @@types["Static::#{klass}"] = "Class::#{klass}"
  end

  def self.current_class_context=(value)
    @@current_class_context = value
  end

  def self.current_function_context=(value)
    @@current_function_context = value
  end

  def self.reset_context
    @@current_class_context = nil
    @@current_function_context = nil
  end

  def self.type_of(original_path)
    puts @@types.inspect
    path = original_path.dup
    type = self.find_first(path.shift)
    puts "FIRST: #{type}"
    path.each do |part|
      puts "NEXT LOOKUP: #{type}::#{part}"
      type = @@types["#{type}::#{part}"]
      puts "DONE: #{type}"
      raise CompileError, "#{original_path.join} does not exist in current context" unless type
    end
    type.to_sym
  end

  def self.is_local?(path)
    path.length == 1 && @@types["#{@@current_class_context}::#{path.first}"].nil?
  end

  def self.is_instance_variable?(name)
    !@@types["#{@@current_class_context}::#{name}"].nil?
  end

  def self.is_static_reference?(name)
    @@types["#{@@current_class_context}::#{@@current_function_context}::#{name}"].nil? &&
    @@types["#{@@current_class_context}::#{name}"].nil? &&
    @@types["Static::#{name}"]
  end

  private

  def self.find_first(name)
    puts "Class context: #{@@current_class_context}"
    puts "Function context: #{@@current_function_context}"

    scoped = @@types["#{@@current_class_context}::#{@@current_function_context}::#{name}"]
    global = @@types["#{@@current_class_context}::#{name}"]
    static = @@types["Static::#{name}"]

    return scoped if scoped
    return global if global
    return static if static
    return "void"
    raise CompileError, "#{name} does not exist in current context."
  end

end