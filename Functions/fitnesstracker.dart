
import 'dart:math';
import 'dart:io';
// Tasks:
// 1. BMI Calculator Function

// Create a function that takes a person's weight (in kg) and height (in meters) as parameters
// Calculate and return their BMI (BMI = weight / height²)



double bmi( weight, height) {
  return weight / pow(height, 2);
}

// 2. BMI Category Function

// Create a function that takes a BMI value as a parameter
// Return the category as a String:
 void level(bmi){
   if (bmi< 18.5) {
     print("Underweight");
   } else if(bmi <= 18.5 && bmi >= 24.9){
     print('Normal Weight');
   }else if(bmi <= 25.0 && bmi >= 29.9 ){
    print('Overweight');
   }else if(bmi >= 30.0){
    print('Obese');
   }
 }

// Belobmiw 18.5: "Underweight"
// 18.5 - 24.9: "Normal weight"
// 25.0 - 29.9: "Overweight"
// 30.0 and above: "Obese"



// 3. Calorie Burn Calculator Function

// Create a function that takes exercise type (String) and duration (in minutes) as parameters
// Return estimated calories burned:

// "running": 10 calories per minute
// "walking": 5 calories per minute
// "cycling": 8 calories per minute
// Any other exercise: 6 calories per minute
void caloriesBurned(String exerciseType, int duration){
var caloriesBurnedperMin;
  switch(caloriesBurnedperMin){
    case "Running":
    print("${duration* 13}calories/min");
      case "Walking":
    print("${duration * 4} calories/min");
      case "Cycling":
    print("${duration * 10} calories/min");
      case "Jogging":
    print("${duration * 9} calories/min");
  }
}


// 4. Weekly Exercise Summary Function

// Create a function that takes a list of daily exercise minutes (7 days) as a parameter
// Return the total minutes exercised in the week


// 5. Greeting Function

// Create a function with NO parameters that just prints "Welcome to Fitness Tracker!"
void greet(){
  print("Welcome to Fitness Tracker!");
}

// 6. Complete Profile Function

// Create a function that takes name, age, weight, height, and goal (optional parameter with default value "Get Fit")
// This function should call the other functions and display a complete fitness report
void bioData(String? name, int? age, double weight, double height, double ? goal){
  stdout.write("Name: ");
  name = stdin.readLineSync()!;
  stdout.write('Age: ');
  age = int.parse(stdin.readLineSync()!);
  stdout.write("Weight: ");
  weight = double.parse(stdin.readLineSync()!);
  stdout.write("Height: ");
  height = double.parse(stdin.readLineSync()!);
  stdout.write("Weight goal(kg): ");
  goal = double.parse(stdin.readLineSync()!);
}