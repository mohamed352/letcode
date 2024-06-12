class ToSumSolution {
  List<int> toSum(List<int>? numbers, int? target) {
    final index = <int>[];
    if (numbers != null && target != null && numbers.isNotEmpty) {
      for (int i = 0; i < numbers.length; i++) {
        int j = i + 1;

       

        if (numbers[i] + numbers[j] == target) {
          index.add(i);
          index.add(j);
          break;
        } else {}
      }
    }

    print('index: $index');
    return index;
  }
}
