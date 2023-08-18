import 'dart:io';

class Car {
  String brand;
  String model;
  int year = 0; //manufacturing year
  double milesDriven;

  static int numberOfCars = 0; //to track the total number of cars obj created

  Car(
      {required this.brand,
        required this.model,
        required this.year,
        this.milesDriven = 0.0}) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - this.year;
  }
}

void main() {
  ///Car Instances 1
  Car toyota = new Car(brand: 'Toyota', model: 'Camry', year: 2020);

  toyota.drive(10000); //miles driven by toyota
  print(
      'Car ${Car.numberOfCars}: ${toyota.getBrand()} ${toyota.getModel()} ${toyota.getYear()} Miles: ${toyota.getMilesDriven().round()} Age: ${toyota.getAge()}');

  ///Car Instances 2
  Car honda = new Car(brand: 'Honda', model: 'Civic', year: 2018);

  honda.drive(8000); // miles driven by honda
  print(
      'Car ${Car.numberOfCars}: ${honda.getBrand()} ${honda.getModel()} ${honda.getYear()} Miles: ${honda.getMilesDriven().round()} Age: ${honda.getAge()}');

  ///Car Instances 2
  Car ford = new Car(brand: 'Ford', model: 'F-150', year: 2015);

  ford.drive(15000); // miles driven by ford
  print(
      'Car ${Car.numberOfCars}: ${ford.getBrand()} ${ford.getModel()} ${ford.getYear()} Miles: ${ford.getMilesDriven().round()} Age: ${ford.getAge()}');

  print('Total number of cars created: ${Car.numberOfCars}');
}