import 'dart:io';

bool canFormConsecutiveList(List<int> numbers) {
  if (numbers.isEmpty) {
    return true;
  }

  var uniqueNumbers = numbers.toSet();
  if (uniqueNumbers.length != numbers.length) {
    return false;
  }
  int minValue = uniqueNumbers.reduce((a, b) => a < b ? a : b);
  int maxValue = uniqueNumbers.reduce((a, b) => a > b ? a : b);
  return maxValue - minValue + 1 == uniqueNumbers.length;
}

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    List<String> inputs = input.split(' ');
    List<int> numbers = inputs.map(int.parse).toList();

    bool result = canFormConsecutiveList(numbers);
    print(result ? 'true' : 'false');
  }
}