#include <iostream>
#include <vector>

using namespace std;

vector<int> compute_prefix_function(const string &pattern) {
  int m = pattern.length();
  vector<int> pi(m);
  pi[0] = 0;
  int k = 0;
  for (int q = 1; q < m; q++) {
    while (k > 0 && pattern[k] != pattern[q])
      k = pi[k - 1];
    if (pattern[k] == pattern[q])
      k++;
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
    while (q > 0 && pattern[q] != text[i])
      q = pi[q - 1];
    if (pattern[q] == text[i])
      q++;
    if (q == m) {
      matches.push_back(i - m + 1);
      q = pi[q - 1];
    }
  }
  return matches;
}

int main() {
  int needle_length;
  string needle, haystack;
  while (cin >> needle_length) {
    cin >> needle;
    cin >> haystack;
    vector<int> occurrences = kmp(haystack, needle);
    if (occurrences.empty()) {
      cout << endl;
    } else {
      for (int i = 0; i < occurrences.size(); i++)
        cout << occurrences[i] << endl;
    }
  }
  return 0;
}