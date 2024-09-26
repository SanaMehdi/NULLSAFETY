import 'dart:io';

void main() {
  // Prompt the user for their age
  print("Please enter your age:");

  // Read input from the user
  String? input = stdin.readLineSync();

  // Try to convert input to an integer and handle any exceptions
  try {
    // Check if the input is null or empty
    if (input != null && input.isNotEmpty) {
      int age = int.parse(input); // Try to parse the input to an integer

      // Validate the age
      if (age < 0) {
        print("Age cannot be negative.");
      } else if (age >= 100) {
        print("You are already 100 years old or older!");
      } else {
        int yearsLeft = 100 - age; // Calculate years left until 100
        print("You have $yearsLeft years left until you turn 100.");
      }
    } else {
      print("No input provided. Please enter a valid age.");
    }
  } catch (e) {
    // Handle any exception that occurs during parsing
    print("Invalid input. Please enter a valid number for age.");
  }
}
