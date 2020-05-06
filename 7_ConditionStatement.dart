main(List<String> args) {
  int number = 0;
  if (number % 2 == 0) {
    print("Even");
  } else if (number % 3 == 0) {
    print("Odd");
  } else {
    print("Confused.");
  }

  switch (number) {
    case 0:
      print("Even");
      break;
    case 1:
      print("Odd");
      break;
    default:
      print("Confused");
  }
}
