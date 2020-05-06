class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }
  void showOutput() {
    print(this.model);
    print(this.year);
  }
   void sayHello() {
    print(this.model);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);
 
 @override
  void showOutput() {
    // super.showOutput();
    print(this.price);
  }
  // Even we can use without override. No issue
   void sayHello() {
    print(this.model);
  }
}

main(List<String> args) {
  var car = Car("Accord", 2014, 150000);
  car.showOutput();
}
