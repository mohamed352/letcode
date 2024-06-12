import 'package:test/test.dart';
import 'package:letcode/letcode_impl.dart' as letcode;

import 'package:letcode/problems/to_sum_problems.dart' as to_sum_input;

/// This is the test file for the [LetcodeImpl] class in the lib/letcode_impl.dart file.
///
/// This file contains a single test case for the `toSum` function from the `LetcodeImpl` class.
/// The test case checks whether the function returns the expected result for a given input.
void main() {
  /// This test case checks the [toSum] function from the [LetcodeImpl] class.
  ///
  /// The test case checks whether the function returns the expected result for a given input.
  test('toSum', () {
    final expectedResult = to_sum_input.ToSum.result;

    /// Call the [toSum] function with the given input and check whether the result matches the expected result.
    expect(
        letcode.LetcodeImpl()
            .toSum(to_sum_input.ToSum.input, to_sum_input.ToSum.target),
        expectedResult);
  });
  test('isPalindrome', () {
    expect(letcode.LetcodeImpl().isPalindrome(121), true);
  });
}
