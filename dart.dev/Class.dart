import 'dart:math';

class Point {
  final num x;
  final num y;
  final num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

class Pt {
  num x, y;

  // The main constructor for this class.
  Pt(this.x, this.y);
  

  Pt.withAssert(this.x, this.y) : assert(
    x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }
  // Delegates to the main constructor.
  Pt.alongXAxis(num x) : this(x, 0);
}
//If your class produces objects that never change,
//you can make these objects compile-time constants.
//To do this, define a const constructor and make sure that all instance variables are final.

class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}

/*

Factory constructors
Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class.
For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype.

The following example demonstrates a factory constructor returning objects from a cache:
*/
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache =
      <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

/*
Instance, getter, and setter methods can be abstract, 
defining an interface but leaving its implementation up to other classes. 
Abstract methods can only exist in abstract classes.

To make a method abstract, use a semicolon (;) instead of a method body:
*/
abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}



/*
Implicit interfaces
Every class implicitly defines an interface containing all the instance members of the class and of any interfaces it implements. 
If you want to create a class A that supports class B’s API without inheriting B’s implementation, 
class A should implement the B interface.

A class implements one or more interfaces by declaring them in an implements clause and then providing the APIs required by the interfaces. For example:
*/
// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');





class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // Operator == and hashCode not shown. For details, see note below.
  // ···
// Override hashCode using strategy from Effective Java,
  // Chapter 11.
  @override
  int get hashCode {
    return y.hashCode + x.hashCode;
  }

  // You should generally implement operator == if you
  // override hashCode.
  @override
  bool operator ==(dynamic other) {
    if (other is! Vector) return false;
    Vector aVector = other;
    return (aVector.x == x &&
        aVector.y == y);
  }
}

main() {
  var p = new Point(2, 3);
  print(p.distanceFromOrigin);
  var x = 10;
  var y = 20;
  var pp = Pt(x, y);
  var ppp = Pt.withAssert(x, y);

  print(ppp.runtimeType);

var logger = Logger('UI');
logger.log('Button clicked');

print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
