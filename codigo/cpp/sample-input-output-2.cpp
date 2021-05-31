#include <iostream>

using namespace std;

int main() {
  int a, b;
  // stop when both integers are 0
  while (cin >> a >> b && (a || b)) {
    cout << a + b << endl; // compute on the fly
  }
  return 0;
}
