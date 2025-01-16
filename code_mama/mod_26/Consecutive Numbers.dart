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
  int n = int.parse(stdin.readLineSync()!);

  String? input = stdin.readLineSync();
  if (input != null) {
    List<int> numbers = input.split(' ').map(int.parse).toList();

    bool result = canFormConsecutiveList(numbers);
    print(result ? 'true' : 'false');
  }
}