// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
//prediction 
//3.4 / operator performs normal division.
//3  ~/ operator performs integer division and removes the decimal part.
//2   % operator returns the remainder after division.
//3    The modulo operator returns a non-negative remainder when the divisor is positive.
//-3    ~/ operator performs integer division and truncates the result towards zero.
//-17    The abs() method returns the absolute value of 17, which is 17. The negative sign makes the result -17.
//false   Floating-point numbers can have small precision errors, so 0.1 + 0.2 is not exactly equal to 0.3. 
//true    Dart considers the integer 10 and the double 10.0 numerically equal.

void main(){
  int a =17;
  int b = 5;
  print(a / b);
  print(a ~/ b);
  print(a % b);
  print(-a % b);
  print(-a ~/ b);
  print(-17 .abs());
  print(0.1 + 0.2 == 0.3);
  print(10 == 10.0);
}