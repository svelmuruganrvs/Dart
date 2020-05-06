main() {
  // String to Int
  var one = int.parse('1');
  assert(one == 1);

  // Int -> String
  String OneAsString = 1.toString();
  assert(OneAsString == '1');

  //double to string
  String piAsstring = 3.14159.toString();
  assert(piAsstring == '3.14159');

  String piAsFormatedString = 3.14159.toStringAsFixed(2);
  assert(piAsFormatedString == '3.14');

  //String to double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  print("Dart is partial interupter so this line should printing.");

  // throws error.
  // var errorInt = int.parse("str");
}
