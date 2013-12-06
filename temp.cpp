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
class Player {
public:
static Player _new();
string test();
int main();
};
Player Player::_new() { Player x; return x; }
string Player::test() {
Player p;
string test;
Player::_new();
p = ;
test = (string)"Hi!";
return test;
}
void Player::main() {
int a;
a = 5;
if ((1+2)*2>a){
Console::out((string)"six is more than 5");
}
if (5>6){
Console::out((string)"5 is more than 6");
}
Console::out(test());
}
int main() {
Player p;
Player::_new();
p = ;
p.main();
return 0;
}
