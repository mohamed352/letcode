class RomanToIntSolution {
  int romanToInt(String s) {
    print('Input: $s');
    if (s.isNotEmpty && s.length <= 15) {
      int result = 0;
      for (int i = 0; i < s.length; i++) {
        print('Current index: $i');
        print('Current character: ${s[i]}');
        if (i < s.length - 1 && _romans[s[i]]! < _romans[s[i + 1]]!) {
          print('Subtracting ${_romans[s[i]]!}');
          result -= _romans[s[i]]!;
        } else {
          print('Adding ${_romans[s[i]]!}');
          result += _romans[s[i]]!;
        }
      }
      print('Result: $result');
      return result;
    }
    print('Result: 0');
    return 0;
  }

  final _romans = <String, int>{
    'IV': 4,
    'IX': 9,
    'XL': 40,
    'XC': 90,
    'CD': 400,
    'CM': 900,
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  /// Converts a Roman numeral string [s] to an integer.
  ///
  /// This function uses a map to store the Roman numerals and their corresponding
  /// integer values. It then iterates through the input string and checks if each
  /// character is a key in the map. If it is, it adds the value to the result.
  /// If the character is not a key in the map, it subtracts the value from the
  /// result.
  ///
  /// Parameters:
  /// - `s`: The Roman numeral string to convert to an integer.
  ///
  /// Returns:
  /// - The integer value of the Roman numeral string.
  int romanToIntOptimal(String s) {
    print('Input: $s');
    int result = 0;

    // Iterate through the map of Roman numerals and their corresponding integer values
    for (final roman in _romans.entries) {
      print('Current roman: ${roman.key}');
      final count = roman.key.allMatches(s).length;
      print('Count: $count');
      result += roman.value * count;
      print('Result: $result');
      s = s.replaceAll(roman.key, '');
      print('Updated input: $s');
    }

    print('Final result: $result');
    return result;
  }
}
/*
input III
output 3
i = 0
s.length = 2
map[s[i]] = 1
result = 1

i = 1
s.length = 2
map[s[i]] = 1
result = 2

i = 2
s.length = 2
map[s[i]] = 1
result = 3




*/
