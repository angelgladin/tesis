int main() {
  int t;
  string p, q;
  cin >> t;
  while (t--) {
    cin >> p;
    cin >> q;
    string s = q + q;
    vector<int> occurrences = kmp(s, p);
    if (occurrences.empty())
      cout << "No" << endl;
    else
      cout << "Si" << endl;
  }
  return 0;
}
