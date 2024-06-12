import 'package:letcode/Solution/to_sum.dart';
import 'package:letcode/letcode.dart';


/// The implementation of the LetCode interface. 
/// 
/// This class provides the implementation of the LetCode interface's 
/// toSum method by delegating it to the ToSumSolution class.
class LetcodeImpl implements LetCode {
  /// The instance of the ToSumSolution class that will be used for solving the 
  /// toSum problem.
  final ToSumSolution _toSum = ToSumSolution();

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
    return _toSum.toSum(numbers, target);
  }
}
