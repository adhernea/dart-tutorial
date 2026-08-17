class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;

  set updateWidth(double newWidth) {
    if (newWidth > 0) {
      width = newWidth;
    }
  }

}