#include <algorithm>
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

int main() {
  string s;
  while (cin >> s) {
    string ans = s;

    string rev = s;
    reverse(rev.begin(), rev.end());

    string aux = rev + '$' + s;

    vector<int> pi = compute_prefix_function(aux);
    int k = pi[aux.size() - 1];

    for (size_t i = k; i < s.length(); i++)
      ans += aux[i];

    cout << ans << endl;
  }
  return 0;
}
