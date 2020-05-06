
class Rectangle {
  num left , top , width , height;

  Rectangle(this.left , this.top , this.width , this.height);

  // Define two calculate properties : right and bottom 
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

main(List<String> args) {
  var rect = Rectangle(3 , 4 , 20 , 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);

}