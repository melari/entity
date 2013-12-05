#include <stdio.h>
#include <iostream>
#include <cstdio>
#include <string>
using namespace std;

class Console
{
public:
  static void out(string output);
};

void Console::out(string output) { printf("%s", output.c_str()); }
int main() {
int a;
a = 5;
if (6>5){
Console::out((string)"six is more than 5");
}
if (5>6){
Console::out((string)"5 is more than 6");
}
return 0;
}
