abstract class Shape {
  String color;
  Shape(this.color);
  double getArea();
  String toString();
}

class Rectangle extends Shape {
  int width;
  int height;

  Rectangle(String color, this.width, this.height) : super(color);

  @override
  double getArea() => (width * height).toDouble();

  @override
  String toString() =>
      'Rectangle(color: $color, width: $width, height: $height)';
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(String color, this.base, this.height) : super(color);

  @override
  double getArea() => (base * height / 2).toDouble();

  @override
  String toString() => 'Triangle(color: $color, base: $base, height: $height)';
}

/// Example usage
void main() {
  Shape rectangle = Rectangle('red', 10, 5);
  Shape triangle = Triangle('blue', 6, 4);

  print(rectangle); // Rectangle(color: red, width: 10, height: 5)
  print('Area of rectangle: ${rectangle.getArea()}'); // Area of rectangle: 50.0

  print(triangle); // Triangle(color: blue, base: 6, height: 4)
  print('Area of triangle: ${triangle.getArea()}'); // Area of triangle: 12.0
}
