#include <iostream>       // import header `iostream`
                          // for handling I/O.

using namespace std;

int main() {
  int test_cases, a, b;    // declare variables
  cin >> test_cases;       // number of cases
  while (test_cases--) {   // repeat until 0
    cin >> a >> b;         // read the values
    cout << a + b << endl; // compute on the fly
                           // and print them out
                           // followed by a new line
  }
  return 0;
}
