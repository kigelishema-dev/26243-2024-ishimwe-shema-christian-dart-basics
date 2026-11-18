// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
void main(){
  int x =3;
  int y = 43;
  var z =x * 2 + y ~/4;
  z += x;
  print(z);
  print(z.isEven);
  print('$z' + '$x');

}