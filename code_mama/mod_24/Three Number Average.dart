import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> numbersStr = input.split(' ');
    if (numbersStr.length == 3) {
      double? num1 = double.tryParse(numbersStr[0]);
      double? num2 = double.tryParse(numbersStr[1]);
      double? num3 = double.tryParse(numbersStr[2]);

      if (num1 != null && num2 != null && num3 != null) {
        double average = (num1 + num2 + num3) / 3;
        print('Average: ${average.toStringAsFixed(2)}');
      } else {
        print('Invalid input. Please enter three valid numbers.');
      }
    } else {
      print('Please enter exactly three numbers separated by spaces.');
    }
  } else {
    print('No input received. Please enter three numbers.');
  }
}