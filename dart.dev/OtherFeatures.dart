
main(List<String> arguments) {

  print(arguments);

  // assert(arguments.length == 2);
  // assert(int.parse(arguments[0]) == 1);
  // assert(arguments[1] == 'test');

  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby'; // With type annotation
  //name = 'Alice'; // Error: a final variable can only be set once.

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  var foo = const [];
  final bararr = const [];
  const baz = []; // Equivalent to `const []`

  //You can change the value of a non-final, non-const variable, even if it used to have a const value:
  foo = [1, 2, 3]; // Was const []
  // You can’t change the value of a const variable:
  //baz = [42]; // Error: Constant variables can't be assigned a value.

  // As of Dart 2.5, you can define constants that use type checks and casts (is and as),
  // Valid compile-time constants as of Dart 2.5.
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: "int"}; // Use is and collection if.
  print(map);
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  print(set);

  //Integers are numbers without a decimal point. Here are some examples of defining integer literals:
  var x = 1;
  var hex = 0xDEADBEEF;
  print(x.runtimeType);
  print(hex.runtimeType);

//If a number includes a decimal, it is a double. Here are some examples of defining double literals:

var y = 1.1;
var exponents = 1.42e5;
print(y.runtimeType);
print(exponents.runtimeType);

//As of Dart 2.1, integer literals are automatically converted to doubles when necessary:

double z = 1; // Equivalent to double z = 1.0.
print(z.runtimeType);

// Here’s how you turn a string into a number, or vice versa:
// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');

//The int type specifies the traditional bitwise shift (<<, >>), AND (&), and OR (|) operators. For example:

assert((3 << 1) == 6); // 0011 << 1 == 0110
assert((3 >> 1) == 1); // 0011 >> 1 == 0001
assert((3 | 4) == 7); // 0011 | 0100 == 0111

//Literal numbers are compile-time constants. Many arithmetic expressions are also compile-time constants, as long as their operands are compile-time constants that evaluate to numbers.

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;

print(msUntilRetry.runtimeType);

//You can put the value of an expression inside a string by using ${expression}. If the expression is an identifier, you can skip the {}. To get the string corresponding to an object, Dart calls the object’s toString() method.

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, ' +
        'which is very handy.');
assert('That deserves all caps. ' +
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. ' +
        'STRING INTERPOLATION is very handy!');

//Note: The == operator tests whether two objects are equivalent. Two strings are equivalent if they contain the same sequence of code units.



// Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);


//List
var constantList = const [1, 2, 3];
// constantList[1] = 1; // Uncommenting this causes an error.

var list1 = [1, 2, 3];
var list2 = [0, ...list1];
assert(list2.length == 4);
print(list2);

//If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?):
var list3;
var list4 = [0, ...?list3];
assert(list4.length == 1);
print(list4);

var promoActive = false;
//collection if 
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
];
print(nav);


//collection for to manipulate the items of a list 
var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
assert(listOfStrings[1] == '#1');
print(listOfStrings);


// Set
final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // Uncommenting this causes an error.



// var hi = 'Hi 🇩🇰';
// print(hi);
// print('The end of the string: ${hi.substring(hi.length - 1)}');


doStuff();

}
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

// Need to install meta package
//https://pub.dev/packages/meta
/*void requiredWithNamedconstanct({@required String key,  String value}) {

}*/