// // Import the necessary packages for HTTP requests and JSON decoding
// // import 'package:http/http.dart' as http;
// import 'dart:convert';

// // Sample Data and Main Function Example
// // This is a simple example of how to declare and use variables in Dart.
// void main() {
//   // Declare variables with inferred types using `var`
//   var name = 'Voyager I';
//   var year = 1977;
//   var antennaDiameter = 3.7;
//   var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
//   var image = {
//     'tags': ['saturn'],
//     'url': '//path/to/saturn.jpg'
//   };

//   // Print the name variable
//   print('Hi, my name is: $name');

//   // Access the first element in the list `flybyObjects`
//   print('Planet: ${flybyObjects[0]}'); // Expected output: "Jupiter"

//   print('Hello, World!');
// }

// // Function Example 1 - A Simple Synchronous Function
// // This function takes a user ID and a list of data, then returns a formatted string.
// String findUserMore(int userId, List<String> data) {
//   // Use string interpolation to format the output string
//   return 'User ID: $userId, First data item: ${data[0]}';
// }

// // Usage example of `findUserMore` function
// void usageExample1() {
//   // Define a list of user names
//   List<String> users = ["user 1", "user 2", "user 3"];

//   // Call the function and store the result
//   String findMessage = findUserMore(12, users);

//   // Print the result
//   print(findMessage); // Expected output: "User ID: 12, First data item: user 1"
// }

// // Function Example 2 - An Asynchronous Function to Fetch User Data
// // This function fetches user data from an API endpoint asynchronously.
// /*
//   Future<String> fetchUserData(String userId) async {
//     try {
//       // Make a GET request to the specified URL
//       final response =
//           await http.get(Uri.parse('https://api.example.com/users/$userId'));

//       // Check if the request was successful (status code 200)
//       if (response.statusCode == 200) {
//         // Decode the JSON response into a Dart Map
//         final data = jsonDecode(response.body);

//         // Return the user's name from the response data
//         return 'User name is ${data['name']}';
//       } else {
//         // Return an error message if the request fails
//         return 'Failed to load user data';
//       }
//     } catch (error) {
//       // Print the error if something goes wrong during the fetch
//       print("Error fetching user data: $error");

//       // Return a generic error message
//       return 'Failed to fetch user data';
//     }
// }
// */

// // Usage example of `fetchUserData` function
// void usageExample2() async {
//   // Call the asynchronous function and wait for the result
//   // String result = await fetchUserData("123");

//   // Print the result of the fetchUserData function
//   // print(result); // Output depends on the API response
// }

// // Main function to demonstrate examples
// void main2() async {
//   // Run example 1 (synchronous function)
//   usageExample1();

//   // Run example 2 (asynchronous function)
//   // await usageExample2();
// }

// its nested functional

// bool topLevel = true;

// void nestedFunction(String insideFunction, insideMain) {
//   var insideNestedFunction = true;

//   print("its called nestedFunction $insideFunction");

//   assert(topLevel);
//   assert(insideMain);
//   assert(insideNestedFunction);
// }

// myFunction(String insideMain) {
//   var insideFunction = "true";
//   print("its called myFunction $insideFunction");

//   nestedFunction(insideFunction, "insideMain");
// }

// void main() {
//   var insideMain = "true";

//   final msg = myFunction(insideMain);
//   print(msg);
// }
