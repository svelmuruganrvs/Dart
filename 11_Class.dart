//Class
class Person {
  String name;
  int age;

  Person() {

  }
  // named constructor
  Person.guest() {
    this.name = "Guest";
    this.age = 18;
  }
    Person.guestWith({var age = 18}) {
    this.name = "Guest";
    this.age = age;
  }
  void showOutput() {
    print(name);
    print(age);
  }
}

class Bird {
  String name;
  int age;

  Bird(String name, [int age = 18]) {
    this.name = name;
    this.age = age;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

class Metal {
  String name;
  int weight;

  Metal(this.name, [this.weight = 1]);

  void showOutput() {
    print("Metal Name : $name");
    print("Weight : $weight");
  }
}
class X {
   // We can't able to change value after intial. 
  final name;
  // Compile time constant,
  // we can't change or assign at run time.
  // static refered here class variable
  static const int age = 18; 
  X(this.name);
}
main(List<String> args) {
  print("\n\n\n");
  var x = X("Jack");
  print(X.age);

  final name = "Ram"; // We can't able to reasign
  const age = 39; // This is set at compile time

  Person person1 = Person();
  person1.showOutput();
  Person person2 = Person();
  person2.name = "Ram Kumar";
  person2.age = 23;
  person2.showOutput();
  Person person3 = Person.guest();
  person3.showOutput();
  Person person4 = Person.guestWith();
  person4.showOutput();
  Person person5 = Person.guestWith(age: 26);
  person5.showOutput();

  Bird bird = Bird("peacock");
  bird.showOutput();
  Bird bird1 = Bird("peacock", 19);
  bird1.showOutput();
  Metal metal = Metal("gold");
  metal.showOutput();
}
