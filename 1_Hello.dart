//Package dart:core imported .
import 'dart:core';
// I/O Library
import 'dart:io';

/// Entry point for progrem - Document comment
main() {
  // Type inference
  var firstName = "Velmurugan";
  //type defined
  String lastname = " S";
  print("Hello " + firstName + lastname);
  
  /*
  Multi line comment :-
  Allow to display text in standered output.
  */
  stdout.writeln("What is your name ?");
  String name = stdin.readLineSync();
  print("Your name : " + name);
}
