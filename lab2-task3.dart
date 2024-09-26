import 'dart:io';

void main() {
  stdout.write('Please enter your age: ');

  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('You did not enter an age. Please provide a valid age.');
    return; // Exit if the input is invalid
  }

  try {
    int age = int.parse(input); // Convert input to integer
    if (age < 0) {
      print('Age cannot be negative. Please enter a valid age.');
    } else {
      int yearsLeft = 100 - age; // Calculate years until 100
      print('You have $yearsLeft years left until you turn 100!');
    }
  } catch (e) {
    print('Error: Invalid input. Please enter a valid number for your age.'); // Handle exceptions
  }
}