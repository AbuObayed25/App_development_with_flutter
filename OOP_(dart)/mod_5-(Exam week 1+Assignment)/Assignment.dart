class Car {
  String brand;
  String model;
  int year;
  double milesDriven=0;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    milesDriven = 0.0;
    numberOfCars++;
  }
  void drive(double miles) {
    milesDriven += miles;
  }
  int getAge() {
    return DateTime.now().year - year;
  }
  String getBrand() {
    return brand;
  }
  String getModel() {
    return model;
  }
  int getYear() {
    return year;
  }
  double getMilesDriven() {
    return milesDriven;
  }
}
void main() {
  // Create three Car objects
  Car car1 = Car('BMW','7Series',2010);
  Car car2 = Car('Audi','Q5',2008);
  Car car3 = Car('Rolls Royce','Phantom',2003);

  car1.drive(13450.5);
  car2.drive(240560.25);
  car3.drive(456530.75);

  print("Car 1: ${car1.getBrand()}, ${car1.getModel()}, ${car1.getYear()}, ${car1.getMilesDriven()}");
  print("Car 2: ${car2.getBrand()}, ${car2.getModel()}, ${car2.getYear()}, ${car2.getMilesDriven()}");
  print("Car 3: ${car3.getBrand()}, ${car3.getModel()}, ${car3.getYear()}, ${car3.getMilesDriven()}");

  print("Car 1 age: ${car1.getAge()}");
  print("Car 2 age: ${car2.getAge()}");
  print("Car 3 age: ${car3.getAge()}");

  print("Total number of cars created: ${Car.numberOfCars}");
}