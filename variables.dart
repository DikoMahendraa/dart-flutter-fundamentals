/// This program demonstrates the use of variables, including `var`, `final`, and `const`.
/// It also showcases conditional statements in Dart.

void main() {
  // Declare a variable of type String using 'var'.
  var greeting = "Hi, I am a string";

  // Declare a variable to hold an integer value (age).
  var myAge = 20;

  // Declare a non-nullable integer variable initialized with a year.
  int yearOfBirth = 2000;

  // Declare a late-initialized variable that can hold a nullable String.
  late String? description;

  // Final and const variables:
  // Use `final` for a variable that can only be set once.
  final String name = 'Bob';

  // Use `const` for a compile-time constant.
  const String nickname = 'Bobby';

  // Print the name variable.
  print(name);

  // Uncomment the next line to initialize the description variable and print it.
  // description = 'Feijoada!';
  // print(description);

  // Conditional statements to check the age and year.
  if (yearOfBirth > 2000) {
    // Check if the person is older than 18 years.
    if (myAge > 18) {
      print("I am an adult older than 18 years.");
    } else if (myAge == 18) {
      print("I am exactly 18 years old.");
    } else {
      print("Sorry, you are very young.");
    }
  } else {
    // Print the year of birth if it is not greater than 2000.
    print("Year of birth: $yearOfBirth");
  }
}
