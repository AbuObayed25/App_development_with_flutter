import 'getter_setter.dart';

void main() {

  Worker rifat = Worker();
  rifat.company;
  rifat.designation;
  print(rifat.salary);

  // setter method with keyword
  rifat.salary = 33000;
  print(rifat.salary);
}