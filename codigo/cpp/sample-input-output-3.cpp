#include <iostream>

using namespace std;

int main() {
  int a, b;
  while (cin >> a >> b) {  // read until EOF
    cout << a + b << endl; // compute on the fly
  }
  return 0;
}
