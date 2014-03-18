require_relative 'statement.rb'

# Function calls are both statements and expressions
class FunctionCallStatementEval < StatementEval
  def initialize(name, args)
    @name = name
    @arguments = args
    @chain = nil
    @parent = nil
    @relation_type = nil
  end

  def name
    @name
  end

  def chain=(value)
    @chain = value
    value.parent = self
  end

  def parent=(value)
    @parent = value
  end

  def relation_type=(value)
    @relation_type = value

    if @name == 'new'
      @relation_type = '::'
      @name = '_new'
    end
  end

  def is_local?
    TypeRegister.is_local?(path_names)
  end

  def is_first_part_an_instance_variable?
    @parent.nil? &&  TypeRegister.is_instance_variable?(name)
  end

  def is_first_part_a_static_reference?
    @parent.nil? && TypeRegister.is_static_reference?(name)
  end

  def type
    puts "FINDING TYPE OF #{path_names.inspect}"
    TypeRegister.type_of(path_names)
  end

  def path_names
    [path_name] + (@chain.nil? ? [] : @chain.path_names)
  end

  def path_name
    @name + (@arguments.nil? ? '' : '()')
  end

  def eval_arguments
    return '' if @arguments.nil?
    argument_string = "("
    argument_string += @arguments.map do |arg|
      Entity::Compiler.capture { arg.eval }
    end.join(',')
    argument_string + ")"
  end

  def eval_chain
    return '' if @chain.nil?
    chain = Entity::Compiler.capture { @chain.eval }
  end

  def eval_relation_type
    return 'this->' if is_first_part_an_instance_variable?
    return '->' if @relation_type == '.'
    @relation_type
  end

  def eval_name
    is_first_part_a_static_reference? ? "#{@name}Class" : "#{@name}"
  end

  def eval
    semi = Entity::Compiler.capturing? ? '' : ';'

    Entity::Compiler.out("#{eval_relation_type}#{eval_name}#{eval_arguments}#{eval_chain}#{semi}")
  end
end
