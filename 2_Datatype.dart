main() {
  /*
  int 
  double
  String
  bool
  dynamic
  */
  int amount1 = 100;
  int amount2 = 200;
  print("Amount1 :   $amount1   Amount2 :  $amount2 \n");

  String name1 = "Velmurugan";
  var name2 = " S"; // Type inffered as String.

  print("My name is : $name1 $name2 \n");

  bool isItTrue1 = true;
  var isItTrue2 = false;

  print("isItTrue1 : $isItTrue1 isItTrue2 : $isItTrue2 \n");

  dynamic weakVariable = 100;
  print("weakVariable : $weakVariable \n");

  weakVariable = "Dart Programming";
  print("weakVariable after string assigned: $weakVariable\n");

  weakVariable = null;
  print("weakVariable after null: $weakVariable\n");
}
