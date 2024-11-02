// Importing core libraries
// import 'dart:math';

// Importing libraries from external packages
// import 'package:test/test.dart';

// Importing files
import 'lib/person.dart'; // without alias
// import 'lib/person.dart' as personalUser; // with alias

class LearnHowImportWork {
  Person person1 = Person("Diko", 21); // without alias
  // personalUser.Person person1 = personalUser.Person("Diko", 21); // with alias

  String toString() {
    return 'person age: ${person1.age}, and name: ${person1.name}';
  }
}

void main() {
  print(LearnHowImportWork());
}
