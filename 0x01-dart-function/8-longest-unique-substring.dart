String longestUniqueSubstring(String str) {
  String longest = "";
  int start = 0;
  Map<String, int> charIndexMap = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    
    if (charIndexMap.containsKey(currentChar)) {
      if (charIndexMap[currentChar]! >= start) {
        start = charIndexMap[currentChar]! + 1;
      }
    }

    charIndexMap[currentChar] = i;

    String currentSubstring = str.substring(start, i + 1);
    if (currentSubstring.length > longest.length) {
      longest = currentSubstring;
    }
  }

  return longest;
}
