require_relative 'expression.rb'

class DoubleOperandExpressionEval < ExpressionEval
  @@operand_map = {
    '+' => 'op_add',
    '-' => 'op_sub',
    '*' => 'op_mul',
    '/' => 'op_div',
    '%' => 'op_mod',
    '^' => 'op_pow',
    '==' => 'op_equal',
    '>' => 'op_gt',
    '<' => 'op_lt',
    '&&' => 'op_and',
    '||' => 'op_or',

    # Special implied operators (handled specially in eval)
    '!=' => 'op_equal',
    '>=' => 'op_gt',
    '<=' => 'op_lt'
  }

  def initialize(operand_type, lh_expression_eval, rh_expression_eval)
    @operand_type = operand_type
    @lh_expression_eval = lh_expression_eval
    @rh_expression_eval = rh_expression_eval
  end

  def type
    if ['+', '-', '*', '/', '%', '^'].include? @operand_type
      if @lh_expression_eval.type == :Float || @rh_expression_eval.type == :Float
        :Float
      else
        :Int
      end
    else
      :Bool
    end
  end

  def basic_eval(temp_type = nil)
    type = temp_type.nil? ? @operand_type : temp_type
    lhs = Entity::Compiler.capture { @lh_expression_eval.eval }
    rhs = Entity::Compiler.capture { @rh_expression_eval.eval }
    "#{lhs}->#{@@operand_map[type]}(#{rhs})"
  end

  def eval
    basic_part = basic_eval
    case @operand_type
    when '!='
      "#{basic_part}->op_not()"
    when '>='
      "#{basic_part}->op_or(#{basic_eval('==')})"
    when '<='
      "#{basic_part}->op_or(#{basic_eval('==')})"
    else
      basic_part
    end
  end
end