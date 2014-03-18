class Libraries
  private

  def self.register_literal_class(klass, literal)
    TypeRegister.register_class(klass)
    TypeRegister.register_instance_variable(klass, "value", literal)
    TypeRegister.register_function(klass, "to_s", "String")
  end

  public

  def self.standard
    puts "ADDING STANDARD LIBRARY"
    self.register_literal_class("Float", "float")
    self.register_literal_class("String", "string")
    self.register_literal_class("Int", "int")
    self.register_literal_class("Bool", "bool")

    TypeRegister.register_class("Console")

    <<-EOS
#include <stdio.h>
#include <iostream>
#include <cstdio>
#include <string>
#include <tgmath.h>
#include <tr1/memory>
using namespace std::tr1;

typedef std::string string;

class ObjectClass;
class FloatClass;
class StringClass;
class BoolClass;
class IntClass;

template <class T> class ListClass;

class ConsoleClass;

typedef shared_ptr<ObjectClass> Object;
typedef shared_ptr<FloatClass> Float;
typedef shared_ptr<StringClass> String;
typedef shared_ptr<BoolClass> Bool;
typedef shared_ptr<IntClass> Int;

typedef shared_ptr<ConsoleClass> Console;

class ObjectClass
{
public:
  ObjectClass();
  static Object _new();
  String to_s();
};
class IntClass : public ObjectClass
{
public:
  IntClass();
  IntClass(int value);
  static Int _new(int value);
  int value;
  String to_s();
  Float to_f();
  Int to_i();
  Int op_add(Int other);
  Int op_sub(Int other);
  Int op_mul(Int other);
  Int op_div(Int other);
  Int op_mod(Int other);
  Int op_pow(Int power);
  Int op_negate();
  Bool op_equal(Int other);
  Bool op_gt(Int other);
  Bool op_lt(Int other);
};
class FloatClass : public ObjectClass
{
public:
  FloatClass();
  FloatClass(float value);
  static Float _new(float value);
  float value;
  String to_s();
  Float to_f();
  Int to_i();
  Float op_add(Float other);
  Float op_sub(Float other);
  Float op_mul(Float other);
  Float op_div(Float other);
  Float op_mod(Float other);
  Float op_pow(Int power);
  Float op_negate();
  Bool op_equal(Float other);
  Bool op_gt(Float other);
  Bool op_lt(Float other);
};
class StringClass : public ObjectClass
{
public:
  StringClass();
  StringClass(string value);
  static String _new(string value);
  string value;
  String to_s();
  Float to_f();
  Int to_i();
  String op_add(String other);
  Bool op_equal(String other);
};
class BoolClass : public ObjectClass
{
public:
  BoolClass();
  BoolClass(bool value);
  static Bool _new(bool value);
  bool value;
  String to_s();
  Bool op_equal(Bool other);
  Bool op_not();
  Bool op_or(Bool other);
  Bool op_and(Bool other);
};

class ConsoleClass : public ObjectClass
{
public:
  static void out(String output);
  static void raw_out(String output);
};

ObjectClass::ObjectClass() {}
Object ObjectClass::_new() { Object x(new ObjectClass()); return x; }
String ObjectClass::to_s() { return StringClass::_new((string)"<Object>"); }

IntClass::IntClass() {}
Int IntClass::_new(int value) { Int x(new IntClass(value)); return x; }
IntClass::IntClass(int value) { this->value = value; }
String IntClass::to_s()
{
  return StringClass::_new(std::to_string(this->value));
}
Float IntClass::to_f()
{
  return FloatClass::_new((float)this->value);
}
Int IntClass::to_i()
{
  return IntClass::_new(this->value);
}
Int IntClass::op_add(Int other)
{
  return IntClass::_new(this->value + other->value);
}
Int IntClass::op_sub(Int other)
{
  return IntClass::_new(this->value - other->value);
}
Int IntClass::op_mul(Int other)
{
  return IntClass::_new(this->value * other->value);
}
Int IntClass::op_div(Int other)
{
  return IntClass::_new(this->value / other->value);
}
Int IntClass::op_mod(Int other)
{
  return IntClass::_new(this->value % other->value);
}
Int IntClass::op_pow(Int power)
{
  return IntClass::_new(pow(this->value, power->value));
}
Int IntClass::op_negate()
{
  return IntClass::_new(-this->value);
}
Bool IntClass::op_equal(Int other)
{
  return BoolClass::_new(this->value == other->value);
}
Bool IntClass::op_lt(Int other)
{
  return BoolClass::_new(this->value < other->value);
}
Bool IntClass::op_gt(Int other)
{
  return BoolClass::_new(this->value > other->value);
}

FloatClass::FloatClass() {}
Float FloatClass::_new(float value) { Float x(new FloatClass(value)); return x; }
FloatClass::FloatClass(float value) { this->value = value; }
String FloatClass::to_s()
{
  return StringClass::_new(std::to_string(this->value));
}
Float FloatClass::to_f()
{
  return FloatClass::_new(this->value);
}
Int FloatClass::to_i()
{
  return IntClass::_new((int)this->value);
}
Float FloatClass::op_add(Float other)
{
  return FloatClass::_new(this->value + other->value);
}
Float FloatClass::op_sub(Float other)
{
  return FloatClass::_new(this->value - other->value);
}
Float FloatClass::op_mul(Float other)
{
  return FloatClass::_new(this->value * other->value);
}
Float FloatClass::op_div(Float other)
{
  return FloatClass::_new(this->value / other->value);
}
Float FloatClass::op_mod(Float other)
{
  return FloatClass::_new(fmod(this->value, other->value));
}
Float FloatClass::op_pow(Int power)
{
  return FloatClass::_new(pow(this->value, power->value));
}
Float FloatClass::op_negate()
{
  return FloatClass::_new(-this->value);
}
Bool FloatClass::op_equal(Float other)
{
  return BoolClass::_new(this->value == other->value);
}
Bool FloatClass::op_lt(Float other)
{
  return BoolClass::_new(this->value < other->value);
}
Bool FloatClass::op_gt(Float other)
{
  return BoolClass::_new(this->value > other->value);
}

StringClass::StringClass() {}
String StringClass::_new(string value) { String x(new StringClass(value)); return x; }
StringClass::StringClass(string value) { this->value = value; }
String StringClass::to_s()
{
  return StringClass::_new(this->value);
}
Float StringClass::to_f() { return FloatClass::_new(0.0); }
Int StringClass::to_i() { return IntClass::_new(0); }
String StringClass::op_add(String other) { return StringClass::_new(this->value + other->value); }
Bool StringClass::op_equal(String other) { return BoolClass::_new(this->value == other->value); }

BoolClass::BoolClass() {}
Bool BoolClass::_new(bool value) { Bool x(new BoolClass(value)); return x; }
BoolClass::BoolClass(bool value) { this->value = value; }
String BoolClass::to_s() { return StringClass::_new(std::to_string(this->value)); }
Bool BoolClass::op_equal(Bool other) { return BoolClass::_new(this->value == other->value); }
Bool BoolClass::op_not() { return BoolClass::_new(!this->value); }
Bool BoolClass::op_or(Bool other) { return BoolClass::_new(this->value || other->value); }
Bool BoolClass::op_and(Bool other) { return BoolClass::_new(this->value && other->value); }

template <class T> class ListClass : public ObjectClass
{
public:
  ListClass() {}
  shared_ptr<T> values[];
  static shared_ptr<ListClass<T>> _new() {
    shared_ptr<ListClass<T>> x(new ListClass<T>());
    return x;
  }
};

void ConsoleClass::out(String output) { printf("%s\\n", output->value.c_str()); }
void ConsoleClass::raw_out(String output) { printf("%s", output->value.c_str()); }

// ========== END STANDARD LIBRARY ============= //

EOS

  end

  def openGL
    <<-EOS

// ============ END OPENGL LIBRARY ================ //
EOS
  end
end