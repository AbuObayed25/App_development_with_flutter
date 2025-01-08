import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    double? celsius = double.tryParse(input);
    if (celsius != null) {
      double fahrenheit = (celsius * 9 / 5) + 32;
      print('The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {

    print('No input received. Please enter a temperature.');
  }
}