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
  int t, test_case_index = 1;
  cin >> t;
  while (t--) {
    int n;
    string s;

    cin >> n;
    cin >> s;

    cout << "Test case #" << test_case_index++ << endl;

    vector<int> pi = compute_prefix_function(s);
    for (int i = 1; i < n; i++) {
      if (pi[i] == 0)
        continue;

      int length = i + 1;
      int k = length - pi[i];
      if (length % k == 0 && k > 0)
        cout << length << ' ' << length / k << endl;
    }
    cout << endl;
  }
}
