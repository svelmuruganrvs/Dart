main(List<String> args) {
  showOutput(square(2));
  showOutput(square(2.5));
print(square.runtimeType);
print(showOutput.runtimeType);

// Arrow function / Fat arrow function ""=>""
showOutput(multiplybyTwo(22));
print(multiplybyTwo.runtimeType);

//nameless function or Anonymous function 
var list = ["Apple", "Android" , "Windows"];
list.forEach(printf);
list.forEach((item) {
  print(item);
});

print(sum(2 ,2 ));
print(add(n1: 3 , n2: 2));
print(add(n2: 3 , n1: 2));
print(addwith(3 , and: 3));
print(addwith(3));
print(addWithDefault(6));
print(sumWithOptional(60));

}
//Example for : Positional argument 
dynamic multiplybyTwo (var num ) =>  num * num;
//Example for : Positional argument 
dynamic sum (var n1 , var n2 ) =>  n1 + n2;
//Example for : Positional argument with default value
dynamic sumWithOptional(var n1 , [var n2] ) =>  n1 + (n2 ?? 0);
//Example for : named argument 
dynamic add ({var n1 , var n2 }) =>  n1 + n2;
//Example for : mix of positional and named argument . 
//If name parameter is optional by default.
dynamic addwith (var n1 , {var and }) =>  n1 + (and ?? 0); //n1 + and ?? 0; whill crash since operator precedence
dynamic addWithDefault (var n1 , {var and = 0 }) =>  n1 + and ; 

void printf(item) {
  print(item);
}
dynamic square (var num ) {
  return num * num;
}

void showOutput(var msg) {
  print(">> $msg");
}