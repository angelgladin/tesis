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
  while (cin >> s && s != "*") {
    vector<int> pi = compute_prefix_function(s);

    int n = s.size();
    int last = pi[n - 1];
    int k_length = n - last;

    if (n % k_length == 0)
      cout << n / k_length << endl;
    else
      cout << 1 << endl;
  }
  return 0;
}
