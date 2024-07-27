import 'package:letcode/_solution/solutions.dart';
import 'package:letcode/letcode.dart';

/// The implementation of the LetCode interface.
///
/// This class provides the implementation of the LetCode interface's
/// toSum method by delegating it to the ToSumSolution class.
class LetcodeImpl implements LetCode {
  /// The instance of the ToSumSolution class that will be used for solving the
  /// toSum problem.
  final Solutions _solutions = Solutions();

  /// Delegates the toSum problem to the ToSumSolution class.
  ///
  /// The [numbers] parameter is a list of integers that are candidates for
  /// the solution.
  /// The [target] parameter is the target sum that the method should find two
  /// numbers that add up to.
  /// The method returns a list of two integers that add up to the [target]
  /// sum.
  @override
  List<int> toSum(List<int> numbers, int target) {
    return _solutions.toSum.toSumOptimal(numbers, target);
  }

  @override

  /// Checks if the given integer [x] is a palindrome.
  ///
  /// Delegates the problem to the PalindromeSolution class.
  ///
  /// The [x] parameter is the integer to be checked.
  /// The method returns a boolean value indicating whether [x] is a palindrome.
  @override
  bool isPalindrome(int x) {
    // Delegate the problem to the PalindromeSolution class.
    // It will check if [x] is a palindrome.
    return _solutions.palindrome.isPalindromeOptimal(x);
  }

  @override

  /// Converts a Roman numeral string [s] to an integer.
  ///
  /// Delegates the problem to the RomanToIntSolution class.
  ///
  /// The [s] parameter is the Roman numeral string to be converted.
  /// The method returns an integer that represents the value of the Roman numeral string.
  @override
  int romanToInt(String s) {
    // Delegate the problem to the RomanToIntSolution class.
    // It will convert the Roman numeral string [s] to an integer.
    return _solutions.romanToInt.romanToIntOptimal(s);
  }

  @override

  /// Finds the longest common prefix among a list of strings [str].
  ///
  /// Delegates the problem to the LongestCommonPrefixSolution class.
  ///
  /// The [str] parameter is the list of strings to find the common prefix for.
  /// The method returns a string that is the longest common prefix among the
  /// strings in [str].
  @override
  String longestCommonPrefix(List<String> str) {
    // Delegate the problem to the LongestCommonPrefixSolution class.
    // It will find the longest common prefix among the strings in [str].
    return _solutions.longestCommonPrefix.longestCommonPrefix(str);
  }
}
