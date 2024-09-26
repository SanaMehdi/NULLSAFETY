void main() {
  // Simulate user input with a hardcoded value
  String? input = "23"; // Example input, you can change this value

  // Try to convert input to an integer and handle any exceptions
  try {
    if (input != null && input.isNotEmpty) {
      int age = int.parse(input);

      // Check if age is valid
      if (age < 0) {
        print("Age cannot be negative.");
      } else if (age >= 100) {
        print("You are already 100 years old or older!");
      } else {
        int yearsLeft = 100 - age;
        print("You have $yearsLeft years left until you turn 100.");
      }
    } else {
      print("No input provided. Please enter a valid age.");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number for age.");
  }
}
