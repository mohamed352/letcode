import 'package:letcode/Solution/solutions.dart';
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
}
