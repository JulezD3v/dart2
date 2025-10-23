
import 'dart:math';
import 'dart:io';

// 1. BMI Calculator Function

double bmi(double weight, double height) {
  return weight / pow(height, 2);
}

String level(double bmiValue) {
  if (bmiValue < 18.5) {
    return "Underweight";
  } else if (bmiValue >= 18.5 && bmiValue <= 24.9) { // Fixed: Changed to proper range
    return 'Normal Weight';
  } else if (bmiValue >= 25.0 && bmiValue <= 29.9) { 
    return 'Overweight';
  } else { 
    return 'Obese';
  }
}


int caloriesBurned(String exerciseType, int duration) {
  switch (exerciseType.toLowerCase()) { 
    case "running":
      return duration * 10; 
    case "walking":
      return duration * 5; 
    case "cycling":
      return duration * 8; 
    default:
      return duration * 6; 
  }
}



int weeklyExerciseSummary(List<int> dailyMinutes) {
  int total = 0;
  for (int minutes in dailyMinutes) {
    total += minutes;
  }
  return total;
}

// Alternative: Get daily minutes from user input (your original idea)
List<int> getDailyExerciseMinutes() {
  List<int> minutes = [];
  
  print('\nEnter exercise minutes for each day of the week:');
  
  for (int i = 0; i < 7; i++) {
    stdout.write("Day ${i + 1} minutes: ");
    int dayMinutes = int.parse(stdin.readLineSync()!);
    minutes.add(dayMinutes);
  }
  
  return minutes;
}

// 5. Greeting Function
void greet() {
  print("Welcome to Fitness Tracker!");
}


void completeProfile(
  String name, 
  int age, 
  double weight, 
  double height, 
  {String goal = "Get Fit"} // Optional parameter with default value
) {
  print("\n========== FITNESS PROFILE ==========");
  print("Name: $name");
  print("Age: $age");
  print("Weight: ${weight}kg");
  print("Height: ${height}m");
  print("Goal: $goal");
  print("=====================================");
  
 
  double bmiValue = bmi(weight, height);
  String category = level(bmiValue);
  
  print("\nBMI: ${bmiValue.toStringAsFixed(2)}");
  print("Category: $category");
}


void getBioDataFromUser() {
  print("\n=== Please provide your information ===");
  
  stdout.write("Name: ");
  String name = stdin.readLineSync()!;

  stdout.write('Age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Weight (kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Height (m): ");
  double height = double.parse(stdin.readLineSync()!);

  stdout.write("Weight goal (kg) [press Enter to skip]: ");
  String? goalInput = stdin.readLineSync();
  String goal = goalInput!.isEmpty ? "Get Fit" : "Reach ${goalInput}kg";

  completeProfile(name, age, weight, height, goal: goal);
  
 
  stdout.write("\nType of Exercise: ");
  String exerciseType = stdin.readLineSync()!;

  stdout.write("Duration (minutes): ");
  int duration = int.parse(stdin.readLineSync()!);
  
  int calories = caloriesBurned(exerciseType, duration);
  print("\nCalories burned: $calories calories");
}

void main() {
  // Greet user
  greet();
  
  print("\n--- Example 1: Using Direct Values ---");
  
  // Example usage with direct values
  String userName = "Aishat Dosunmu";
  int userAge = 20;
  double userWeight = 60.0;
  double userHeight = 1.65;
  
  completeProfile(userName, userAge, userWeight, userHeight, goal: "Lose Weight");
  

  print("\n--- Exercise Data ---");
  int runningCalories = caloriesBurned("Running", 30);
  print("Running for 30 minutes: $runningCalories calories");
  
  int walkingCalories = caloriesBurned("Walking", 45);
  print("Walking for 45 minutes: $walkingCalories calories");
  
  
  List<int> weekMinutes = [30, 45, 0, 60, 20, 50, 40];
  int totalMinutes = weeklyExerciseSummary(weekMinutes);
  print("\nWeekly exercise total: $totalMinutes minutes");
  

}