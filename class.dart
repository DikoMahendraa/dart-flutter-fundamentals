// /// This Dart code defines a base class `DetailUser` and a derived class `PersonalUsers`.
// /// The base class represents a user with a name and age, and the derived class extends it
// /// by adding an email property.

// /// Base class representing a user with a name and age.
// class DetailUser {
//   // Instance variables
//   String name; // The name of the user
//   int age; // The age of the user
//   String? roles; // The age of the user

//   /// Constructor for the DetailUser class.
//   /// Takes a [name] parameter and an optional [age] parameter.
//   /// The [age] parameter defaults to 22 if not provided.
//   DetailUser(this.name, this.roles, [this.age = 22]);

//   /// Overrides the toString method to provide a meaningful string representation of the user.
//   /// Returns a string that includes the user's name and age.
//   @override
//   String toString() {
//     return 'Name: $name, Age: $age, roles: $roles'; // Format: Name: [name], Age: [age]
//   }
// }

// /// Derived class that inherits from DetailUser and represents a user with an email.
// class PersonalUsers extends DetailUser {
//   // Additional property for PersonalUsers
//   String email; // The email address of the user

//   /// Constructor for the PersonalUsers class.
//   /// Takes a [name] and an optional [age], and an [email] parameter.
//   /// The [age] parameter defaults to 22, and the [email] parameter defaults to an empty string.
//   PersonalUsers(String name, String roles, [int age = 22, this.email = ''])
//       : super(name, roles,
//             age); // Calls the superclass (DetailUser) constructor with [name] [roles] and [age].

//   /// Overrides the toString method to provide a meaningful string representation of the PersonalUsers object.
//   /// Returns a string that includes the user's name, age, and email.
//   @override
//   String toString() {
//     return '${super.toString()}, Email: $email ${super.roles}'; // Format: Name: [name], Roles: [roles], Age: [age], Email: [email]
//   }
// }

// /// The main function serves as the entry point for the Dart application.
// void main() {
//   // Create an instance of DetailUser
//   // DetailUser user1 = DetailUser("Diko", "Frontend Engineer");
//   // print(user1); // Output: Name: Diko, Age: 22

//   // Create an instance of PersonalUsers
//   PersonalUsers user2 =
//       PersonalUsers("Alice", "Frontend Engineer", 25, "lice@example.com");
//   print(user2); // Output: Name: Alice, Age: 25, Email: alice@example.com
// }

// class with mixins
// Define a mixin
mixin Composer {
  bool canPlayPiano = true;
  bool canCompose = true;
  bool canConduct = true;

  void compose() {
    print('Composing a new piece of music');
  }
}

class MusicianPerson {
  String? musicGenere = "regage";

  MusicianPerson(this.musicGenere);

  String toString() {
    return "Musician person: $musicGenere";
  }
}

// Extend the Musical class to use the Composer mixin
class Musical extends MusicianPerson with Composer {
  // The musical should be have 1 params for constructor
  Musical(super.musicGenere);

  void entertainMe() {
    if (this.canPlayPiano) {
      // we can use this
      print('Playing piano');
    } else if (canConduct) {
      // or directly called variables
      print('Waving hands');
    } else {
      print('Humming to self');
    }

    print(MusicianPerson(super.musicGenere));
  }
}

void main() {
  // added parameters on Musical
  Musical musical1 = Musical("Pop Dut");

  // Print the initial value of canCompose
  print(musical1.canCompose); // Output: false

  // Assign a value to canCompose
  musical1.canCompose = true;

  // Print the updated value of canCompose
  print(musical1.canCompose); // Output: true

  // Call the compose method from the mixin
  musical1.compose(); // Output: Composing a new piece of music

  musical1.canPlayPiano;

  musical1.musicGenere;

  // Test the entertainMe method
  musical1
      .entertainMe(); // Output: Humming to self (since canPlayPiano and canConduct are still false)
}
