import 'dart:io';
/*Student Grades

Create a Student class with:

A constructor that takes name and a list of grades (List<int>).

A method calculateAverage() that uses a loop to compute the average grade.

A method printDetails() that shows the student’s name and average grade.
Instantiate a few students and print their details.
instance is an actual object created from a class
*/

class Student{
  String names;
  List<int> grades = [];

  void calculateAverage(){
    for(var grade in grades){
      int totalsum = 0;
      totalsum += grade;
      int avg = totalsum ~/ grades.length;
      
    }
  }
}

 