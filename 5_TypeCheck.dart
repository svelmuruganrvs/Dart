
main(List<String> args) {
  int num;
  print(num);
  print(num.runtimeType);

  double db = 1.1;
  print(db.runtimeType);
  String s = "s";
  print(s.runtimeType);

  dynamic dt = "";
  print(dt.runtimeType);
  dt = 1;
  print(dt.runtimeType);

  Object o = 'foo';
  assert(o.runtimeType == String);
}
