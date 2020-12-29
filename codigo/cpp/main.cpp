#include <iostream>
#include "kmp.hpp"

using namespace std;

int main(int argc, char const *argv[]) {
  string text, pattern;

  cout << "Text: " << endl;
  cin >> text;
  cout << "Pattern: " << endl;
  cin >> pattern;

  if (text.size() < pattern.size()) {
    cout << "Pattern must be at least of the size of the text" << endl;
    return -1;
  }

  vector<int> macthes = kmp(text, pattern);
  if (macthes.empty()) {
    cout << "No matches";
  } else {
    for (const int &x : macthes) {
      cout << x << " ";
    }
  }
  cout << endl;

  return 0;
}
