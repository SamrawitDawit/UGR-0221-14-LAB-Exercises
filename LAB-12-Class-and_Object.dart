class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double find_area() {
    return width * height;
  }

  double find_perimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle myRectangle = Rectangle(100, 200);

  print(myRectangle.find_area());
  print(myRectangle.find_perimeter());
}
