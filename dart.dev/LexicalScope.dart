/*

Dart is a lexically scoped language, 
which means that the scope of variables is determined statically, 
simply by the layout of the code. 
You can “follow the curly braces outwards” to see if a variable is in scope.

Here is an example of nested functions with variables at each scope level:
*/
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
      print(insideNestedFunction);
    }
  }
}