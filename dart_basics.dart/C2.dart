// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
void main() {
int day = 2;
switch (day) {
case 1:
case 2:
print('Early week');
case 3:
print('Midweek');
default:
print('Weekend soon');
}
}
