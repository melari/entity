#include <stdio.h>
#include <iostream>
#include <cstdio>
#include <string>
using namespace std;

class Console
{
public:
  static void out(string output);
  static void raw_out(string output);
};

void Console::out(string output) { printf("%s\n", output.c_str()); }
void Console::raw_out(string output) { printf("%s", output.c_str()); }
class Vector2 {
public:
float x;
float y;
Vector2(float _x,float _y);
Vector2();
static Vector2 _new(float _x,float _y);
};
Vector2::Vector2(){}
Vector2 Vector2::_new(float _x,float _y) { Vector2 x(_x,_y); return x; }
Vector2::Vector2(float _x,float _y) {
