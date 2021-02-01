// https://github.com/vengateshsubramaniyan/Spoj-Solutions/blob/master/FILRTEST.cpp

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

int main()
{
    int length;
    string s;
    while (cin >> length >> s)
    {
        if (length == -1 && s.compare("*") == 0)
            break;

        int res = 1;

        cout << res << endl;
    }
    return 0;
}