/*
.This is a grouped response.
"Dart is a true object oriented programming language" how true is that statement? and what did you notice that serves as proof
* Your answer don't need to be long (can be captured in 2-4 sentences)
(3 Points)
 
4. Create a program which calculates the area of a shape the user enters.
Requirements:
Create an abstract class Shape with an abstract method double area().
Create concrete classes:
A shape and field the team will choose
Circle (field: radius).
Rectangle (fields: length, width).
Triangle (fields: base, height).
Each must override the area() method.
In main(): creatively come up with a console experience in order for users to test it.
 */
import 'dart:io';// user input
// import 'dart:math';//perform call

// Abstract class
abstract class Shape {
  double area();
}
// Bellow is an example of pollimorphism  and inheritance
// Circle
// class Circle extends Shape {
//   double radius;
//   Circle(this.radius);

//   @override
//   double area() => pi * radius * radius;
// }

// Rectangle
class Rectangle extends Shape {

  double length, width;

  Rectangle(this.length, this.width);

  @override

  double area() => length * width;

}

 

// // Triangle
// class Triangle extends Shape {
//   double base, height;
//   Triangle(this.base, this.height);

//   @override
//   double area() => 0.5 * base * height;
// }

void main() {
  print("Welcome to the Shape Area Calculator!");
  // print("Choose a shape: 1) Circle  2) Rectangle  3) Triangle");
  // String? choice = stdin.readLineSync();

    // Shape? shape;
// with the help of stdout.write and stdin.readLineSync() user will be able to input and there info revealed
  // switch (choice) {
  //   case '1':
  //     stdout.write("Enter radius: ");
  //     double r = double.parse(stdin.readLineSync()!);
  //     shape = Circle(r);
  //     break;

    // case '2':
      stdout.write("Enter length: ");
      double l = double.parse(stdin.readLineSync()!);
      stdout.write("Enter width: ");
      double w = double.parse(stdin.readLineSync()!);
      Rectangle shapeArea = Rectangle(l,w);
      print(shapeArea.area());
      
      // break;

  //   case '3':
  //     stdout.write("Enter base: ");
  //     double b = double.parse(stdin.readLineSync()!);
  //     stdout.write("Enter height: ");
  //     double h = double.parse(stdin.readLineSync()!);
  //     shape = Triangle(b, h);
  //     break;

  //   default:
  //     print("Invalid choice.");
  // }

}
