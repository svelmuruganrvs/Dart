main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
// Raw string
  var s = r'In a raw string not even \n gets special treatment.';
  print(s);

  var s5 = '''
    You can create 
    multi-line strings like this one.
  ''';

  var s6 = """ This is also a 
    multi-line string.""";

  print(s5);
  print(s6);

  var s7 = "Velmurugan";
  var s8 = "This is sample string interpolation $s7 ";

  print(s8);

  var s9 = "This is sample string interpolation ${s7} ";
  //Evalutating variable and expression inised '${...}' syntex
  var s10 = "This is sample string interpolation ${s7 * 2} ";
  print(s9);
  print(s10);
  
}
