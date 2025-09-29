import 'dart:io';// for user input

// Our abstract class
abstract class Shape {
  double area();
}

//Chose Rectangle
class Rectangle extends Shape {

  double length, width;

  Rectangle(this.length, this.width);

  @override

  double area() => length * width;

}
void main() {
  print("Welcome to the Shape Area Calculator!");
      
      stdout.write("Enter length: ");
      double l = double.parse(stdin.readLineSync()!);
      stdout.write("Enter width: ");
      double w = double.parse(stdin.readLineSync()!);
      Rectangle shapeArea = Rectangle(l,w);
      print(shapeArea.area());
}