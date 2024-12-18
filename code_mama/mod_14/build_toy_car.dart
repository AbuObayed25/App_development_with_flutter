import 'dart:io';

void main() {

  print('Enter the number of wheels, car bodies, and figures:');
  List<int> inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int wheels = inputs[0];
  int carBodies = inputs[1];
  int figures = inputs[2];

  int cars = wheels ~/ 4;
  cars = cars < carBodies ? cars : carBodies;
  cars = cars < (figures ~/ 2) ? cars : (figures ~/ 2);

 
  print(cars);
}
