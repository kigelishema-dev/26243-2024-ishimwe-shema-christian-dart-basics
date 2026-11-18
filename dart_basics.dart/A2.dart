// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

//prediction
//19    The calculation gives 16, then z += x adds 3, making the final value 19.
//false   19 is an odd number, so it is not even.
//193     String interpolation converts z and x into strings, and the + operator joins them together.
void main(){
  int x =d;
  int y = t;
  var z =x * 2 + y ~/4;
  z += x;
  print(z);
  print(z.isEven);
  print('$z' + '$x');

}