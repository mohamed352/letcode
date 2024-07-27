class LongestCommonPrefixSolution {
  /// Finds the longest common prefix in a list of strings.
  ///
  /// The algorithm is simple: it starts with the first string in the list
  /// and checks if all other strings in the list start with the same prefix.
  /// If they do not, it reduces the prefix by one character and checks again.
  /// It continues this until it finds the longest common prefix.
  ///
  /// For example, given the list ['flower', 'flow', 'flight'], the function
  /// returns 'fl'.
  ///
  /// The time complexity of this algorithm is O(n*m) where n is the length of
  /// the list and m is the length of the longest string in the list.
  ///
  /// The space complexity is O(1), as it only uses a constant amount of space
  /// to store the prefix.
  String longestCommonPrefix(List<String> str) {
    print('Input: $str');
    if (str.isNotEmpty && str.length <= 200) {
      String commonPrefix = str.first;
      print('Current common prefix: $commonPrefix');
      for (var word in str) {
        while (!word.startsWith(commonPrefix)) {
          print('Word: $word');
          commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
          print('New common prefix: $commonPrefix');
        }
      }
      print('Result: $commonPrefix');
      return commonPrefix;
    }
    print('Result: ');
    return '';
  }

}

