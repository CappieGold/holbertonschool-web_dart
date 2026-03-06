bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) return "none";

  for (int length = s.length; length >= 3; length--) {
    for (int i = 0; i <= s.length - length; i++) {
      String sub = s.substring(i, i + length);
      if (isPalindrome(sub)) {
        return sub;
      }
    }
  }
  
  return "none";
}
