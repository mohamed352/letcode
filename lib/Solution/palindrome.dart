class PalindromeSolution {
  /// Checks if the given number is a palindrome using the worst approach.
  ///
  /// This function converts the number to a string, reverses it, and then checks
  /// if the reversed string is equal to the original string. If they are equal,
  /// it returns true; otherwise, it returns false.
  ///
  /// Parameters:
  /// - `x`: The number to check if it is a palindrome.
  ///
  /// Returns:
  /// - `true` if the number is a palindrome, `false` otherwise.
  bool isPalindromeWorst(int x) {
    // Log the input parameter
    print('Input parameter: $x');

    // Convert the input parameter to a string
    final String convertString = x.toString(); // Convert the input to a string
    print('Converted string: $convertString'); // Log the converted string

    // Reverse the string
    final String reversString = convertString.split('').reversed.join(''); // Reverse the string
    print('Reversed string: $reversString'); // Log the reversed string

    // Check if the reversed string is equal to the original string
    final bool isPalindrome = convertString == reversString; // Check if they are equal
    print('Is palindrome: $isPalindrome'); // Log the result

    // Return the result
    return isPalindrome; // Return the result
  }

  /// Checks if the given number is a palindrome.
  ///
  /// This function converts the number to a string and checks if it is a palindrome.
  /// It iterates through half of the string and compares the characters at the
  /// beginning and end of the string. If the characters do not match, it returns false.
  /// If all characters match, it returns true.
  ///
  /// Parameters:
  /// - `x`: The number to check if it is a palindrome.
  ///
  /// Returns:
  /// - `true` if the number is a palindrome, `false` otherwise.
  bool isPalindromeOptimal(int x) {
    // Log the input parameter
    print('Input parameter: $x');

    // Convert the number to a string
    String numberAsString = x.toString();

    // Get the length of the string
    int length = numberAsString.length;

    // Log the length of the string
    print('Length of the string: $length');

    // Iterate through half of the string
    for (var i = 0; i < length ~/ 2; i++) {
      // Log the current index
      print('Current index: $i');

      // Log the characters being compared
      print('Comparing characters: ${numberAsString[i]} and ${numberAsString[length - 1 - i]}');

      // Check if the characters at the beginning and end of the string match
      if (numberAsString[i] != numberAsString[length - 1 - i]) {
        // Log that the characters do not match
        print('Characters do not match');
        return false;
      }
    }

    // Log that the characters match
    print('Characters match');

    // Return true if all characters match
    return true;
  }
}
