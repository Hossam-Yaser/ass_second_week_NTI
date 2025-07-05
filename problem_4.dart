import 'dart:math';

class GeometricObject {
  late String color;
  late bool filled;
  //default constractor
  GeometricObject() {
    this.color = "white";
    this.filled = false;
  }
  GeometricObject.create({required this.color, required this.filled});
  @override
  String toString() {
    return "Color : $color \n Filled : $filled";
  }
}

// Triangle class extends GeometricObject
class Triangle extends GeometricObject {
  double side1 = 1.0;
  double side2 = 1.0;
  double side3 = 1.0;
  Triangle();
  Triangle.create({
    required this.side1,
    required this.side2,
    required this.side3,
  });

  //return the area of the triangle
  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  //return the perimeter of the triangle
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  //triangletoString(): method returns a string description of the triangle
  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3\n";
  }
}

//Rectangle class extends GeometricObject
class Rectangle extends GeometricObject {
  double width = 1.0;
  double height = 1.0;

  Rectangle();
  Rectangle.create({required this.width, required this.height});

  //return the area of the rectangle
  double getArea() {
    return width * height;
  }

  //return the perimeter of the rectangle
  double getPerimeter() {
    return 2 * (width + height);
  }

  //rectangletoString(): method returns a string description of the rectangle
  @override
  String toString() {
    return "Rectangle: width = $width, height = $height\n";
  }
}

void main() {
  // Create a triangle and rectangle
  Triangle triangle = Triangle.create(side1: 3, side2: 4, side3: 5);
  Rectangle rectangle = Rectangle.create(width: 4, height: 5);

  // Print Triangle details
  print(triangle);
  print("Area of Triangle: ${triangle.getArea()}");
  print("Perimeter of Triangle: ${triangle.getPerimeter()} \n");
  // Print rectangle details
  print(rectangle);
  print("Area of Rectangle: ${rectangle.getArea()}");
  print("Perimeter of Rectangle: ${rectangle.getPerimeter()}");
}
