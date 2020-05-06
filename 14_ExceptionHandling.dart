int mustGreaterThanZero(int val) {
  if (val < 0) {
    throw Exception("Value must be greater than zero.");
  }
  return val;
}

void letVerifytheValue(var val) {
  var valueVerification; 

  try {
    valueVerification = mustGreaterThanZero(val);
  }
  catch(e) {
    print(e);
  }
  finally{
    if (valueVerification == null ) {
      print("Value is not accepted.");
    }
    else{
      print("Value is accepted : $valueVerification");
    }
  }
}

main(List<String> args) {
  letVerifytheValue(10);
  letVerifytheValue(-10);
}