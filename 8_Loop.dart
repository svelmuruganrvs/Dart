main() {
  // Standard for loop
  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum += i;
  }
  print("Sum of 1 to 10  : $sum");

  var numbers = [1, 2, 3];
  var sumOfArray = 0;
  for (var n in numbers) {
    sumOfArray += n;
  }
  print("Sum of array $numbers is $sumOfArray ");

  sumOfArray = 0;
  for (var i = 0; i < numbers.length; i++) {
    sumOfArray += numbers[i];
  }
  print("Sum of array $numbers using standard for loop is $sumOfArray ");

  print("for each with anonymous function..");
  // for each loop
  numbers.forEach((n) => print(n));
  print("for each with function..");
  numbers.forEach(printNum);

print("while..");
// while Loop
int n1 = 5;
while(n1 > 0) {
  print(n1);
  n1--;
}
print("Do while..");
n1 = 5;
do {
  print(n1);
  n1--;
}while(n1 > 0);

print("break in for loop : ");
var i;
for (i = 0; i < 10; i++) {
  if(i > 5) break;
  print(i);
}
print( " i : $i");

print( " For with continue : -");
for (i = 0; i < 10; i++) {
  if(i %2 ==  0) continue;
  print(i);
}
}

void printNum(num) {
  print(num);
}