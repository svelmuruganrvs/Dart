main(List<String> args) {
  int num = 10 + 22;
  num = num - 2;

  print(num);

  num = num % 5;
  print(num);

  if (num == 0) {
    print("Zero");
  }

  num = 100;
  num *= 2;
  print(num);

// Unary operator
  ++num;
  num++;
  num--;
  --num;
  num += 1;
  num -= 1;
  print(num);

  // Logical && and || operators used for logical check .
  if(num > 200 && num < 203) {
    print("200 to 203");
  }

  // != Not equal 
  if(num != 100) {
    print("num is not equal to 100");
  }

  int x = 100;
  var result = x % 2  == 0 ? "Even" : "Odd";
  print(result);

  // Null Aware Operator.
  // (?.), (??), (??=)

  var n = Num();
  int number;
  if (number != null) {
    n.num = number;
  }
    print(n.num);

  var n1 = Num();
  int anumber;
  anumber = n1?.num ?? 1;
  print("An optional anumber $anumber");

  int bnumber;
  // If null assign 100
  print(bnumber ??= 100);
  print(bnumber);

  var x1 = 10;

  if ( x1 is int) {
    print('integer');
  }
}

class Num {
  int num = 10;
}