class Foo {
  printFoo()  {
    print("Foo");
  }
}

extension Bar on Foo { 
  printBar()  {
    print("Bar");
  }
}

void main() {
  final foo = Foo();
  foo.printFoo();
  foo.printBar();
}