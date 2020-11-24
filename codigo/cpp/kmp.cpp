// LLVM C++ style
// http://format.krzaq.cc/

// Comment all code

#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

vector<int> kmp(const string &, const string &);
vector<int> compute_prefix_function(const string &);

vector<int> compute_prefix_function(const string &pattern) {
  int m = pattern.length();
  vector<int> pi(m, 0);
  pi[0] = -1;
  int k = -1;

  for (int q = 1; q < m; q++) {
    while (k >= 0 && pattern[k + 1] != pattern[q]) {
      k = pi[k];
    }

    if (pattern[k + 1] == pattern[q]) {
      k++;
    }
    pi[q] = k;
  }
  return pi;
}

vector<int> kmp(const string &text, const string &pattern) {
  vector<int> matches;

  int n = text.size();
  int m = pattern.size();
  vector<int> pi = compute_prefix_function(pattern);
  int q = 0;

  for (int i = 0; i < n; i++) {
    while (q >= 0 && pattern[q + 1] != text[i])
      q = pi[q];

    if (pattern[q + 1] == text[i])
      q++;

    if (q == m - 1) {
      matches.push_back(i - m + 1);
      q = pi[q];
    }
  }
  return matches;
}

int main() {
  string text, pattern;

  cout << "Text: " << endl;
  cin >> text;
  cout << "Pattern: " << endl;
  cin >> pattern;

  if (text.size() < pattern.size())
    cout << "Pattern must be at least of the size of the text" << endl;

  vector<int> aux = kmp(text, pattern);

  // Printing out the vector
  stringstream ss;
  for (size_t i = 0; i < aux.size(); ++i) {
    if (i != 0)
      ss << ", ";
    ss << aux[i];
  }
  string s = ss.str();

  cout << s << endl;

  return 0;
}