#include <iostream>

using namespace std;

int main() {
  int test_cases, a, b;
  cin >> test_cases;       // number of cases
  while (test_cases--) {   // repeat until 0
    cin >> a >> b;         // read the values
    cout << a + b << endl; // compute on the fly
  }
  return 0;
}
