class Circle extends Shape implements Drawable {
  double? radius;

  @override
  double calcArea() {
    return radius! * 3.14 * radius!;
  }

  @override
  double calcPerimeter() {
    return 2 * 3.14 * radius!;
  }

  @override
  void draw(String? name) {
    print(name);
  }
}

class Triangle extends Shape implements Drawable {
  double? a;
  double? b;
  double? c;

  double? height;
  double? base;

  @override
  double calcArea() {
    return .5 * height! * base!;
  }

  @override
  double calcPerimeter() {
    return a! + b! + c!;
  }

  @override
  void draw(String? name) {
    print(name);
  }
}

class Rectangle extends Shape implements Drawable {
  double? width;
  double? height;

  @override
  double calcArea() {
    return height! * width!;
  }

  @override
  double calcPerimeter() {
    return (height! + width!) * 2;
  }

  @override
  void draw(String? name) {
    print(name);
  }
}

class Shape {
  double calcArea() {
    return 0;
  }

  double calcPerimeter() {
    return 0;
  }
}

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.height = 10;
  rectangle.width = 50;
  print(rectangle.calcArea());
  print(rectangle.calcPerimeter());

  rectangle.draw("Rectangle");
}

abstract class Drawable {
  void draw(String? name);
}
