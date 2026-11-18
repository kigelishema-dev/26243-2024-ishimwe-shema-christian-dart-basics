// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
//Prediction 
// print(city.length);

//Output: 6
// The word Kigali contains six characters.
// print(city[city.length - 1]);

//Output: i

// The expression accesses the last character of Kigali. String indexes start at zero.

// print(city.substring(2, 4));

//Output: ga

// The substring starts at index 2 and stops before index 4.

// print(city.toUpperCase().indexOf('A'));

//Output: 3

// The word becomes KIGALI, and A is found at index 3.

// print(city.contains('k'));

//Output: false

// The original word starts with uppercase K, but the search uses lowercase k. Dart is case-sensitive.

// print('$city.length');

//Output: Kigali.length

// Only the variable city is interpolated. The word .length is treated as ordinary text.

// print('${city.length}');

//Output: 6

// The curly brackets allow Dart to evaluate the expression city.length.

// print(city * 2);

// Error (compile-time error).

// Dart does not support multiplying a String by an integer using the * operator.

// city.toUpperCase();

//Output: No output.
// This statement converts the word to uppercase but does not print it or change the original String.

// print(city);

//Output: Kigali

//Strings are immutable, so toUpperCase() does not change the original city variable.

 //print(city.replaceAll('i', '!'));
//Output: K!gal!
 //The replaceAll() method replaces every occurrence of lowercase i with an exclamation mark.
 //print('5' + 5.toString())
//Output: 55
// toString() converts the integer 5 into a String, and + joins the two Strings.
// print(int.parse('5') + 5);
//Output: 10
// int.parse() converts the String '5' into an integer, then Dart adds 5.
void main() {
String city = 'Kigali';
print(city.length);
print(city[city.length - 1]);
print(city.substring(2, 4));
print(city.toUpperCase().indexOf('A'));
print(city.contains('k'));
print('$city.length');
print('${city.length}');
print(city * 2);
city.toUpperCase();
print(city);
print(city.replaceAll('i', '!'));
print('5' + 5.toString());
print(int.parse('5') + 5);
}
