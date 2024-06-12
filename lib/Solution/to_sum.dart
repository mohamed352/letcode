class ToSumSolution {
  /// Finds the indices of two numbers in the input list that add up to the target number.
  ///
  /// Returns a list of two indices, where the first index is the index of the first
  /// number and the second index is the index of the second number. If no two numbers
  /// are found that add up to the target, the list will be empty.
  ///
  /// Parameters:
  /// - `numbers`: The list of numbers to search through.
  /// - `target`: The target number to find the sum of two numbers.
  List<int> toSumOptimal(List<int>? numbers, int? target) {
    // Log the input parameters
    print('Input parameters: numbers=$numbers, target=$target');

    final index = <int>[]; // List to store the indices of the two numbers
    final Map<int, int> hashMap = {}; // Map to store the number and its index

    // Check if the input is valid and not empty
    if (numbers != null && target != null && numbers.isNotEmpty) {
      // Iterate through each number in the input list
      for (int i = 0; i < numbers.length; i++) {
        int complement = target - numbers[i]; // Calculate the complement of the current number

        // Log the current number and complement
        print('Current number: ${numbers[i]}, complement: $complement');

        // Check if the complement is in the hash map
        if (hashMap.containsKey(complement)) {
          // If the complement is found, add the indices to the index list
          index.add(hashMap[complement]!);
          index.add(i);

          // Log the index found
          print('Index found: ${hashMap[complement]}, $i');
          break;
        } else {
          // If the complement is not found, add the number and its index to the hash map
          hashMap[numbers[i]] = i;
        }
      }
    }

    // Log the final index
    print('Final index: $index');

    return index; // Return the list of indices
  }
}
