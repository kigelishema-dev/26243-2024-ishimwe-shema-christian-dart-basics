// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
// Q1 grade 85 will return c because the first statement says all grade 50 must return c
// Q2 It produces a RangeError (specifically, RangeError (index): Index out of range).
// Q3 we need to fix two functions: grade() and isPalindrome().
// Q4 I choose TRUE because a palindrome should read the same forward and backward, 
//regardless of capital or small letters. Therefore, Level should return true because it is the same word as level when converted to lowercase.
String grade(int mark) {
  

  if (mark >= 80) {
    return 'A';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 50) {
    return 'C';
  }

  return 'F';
}
bool isPalindrome(String word) {
  // by ICS

  word = word.toLowerCase();

  int i = 0;
  while (i < word.length ~/ 2) {
    if (word[i] != word[word.length - 1 - i]) {
      return false;
    }
    i++;
  }
  return true;
}
void main() {
  

  print('D = $d');
  print('T = $t');

  print('Grade 85: ${grade(85)}');
  print('Grade 75: ${grade(75)}');
  print('Grade 55: ${grade(55)}');
  print('Grade 40: ${grade(40)}');

  print('level: ${isPalindrome('level')}');
  print('Level: ${isPalindrome('Level')}');
  print('hello: ${isPalindrome('hello')}');
}