#include <iostream>
#include <string>
using namespace std;

class Console
{
public:
  static void out(std::string& output);
};

void Console::out(std::string& output) { std::cout << output; }
void main() {
int a;
a = 5;
if (6>5){
Console::out((string)"six is more than 5");
}
if (5>6){
Console::out((string)"5 is more than 6");
}
}
