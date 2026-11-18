// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
//prediction 
// 0 it prints zero because 0 is less ths 6 and it is not equal to 2
// 1 it print  one because 1 is less than 6 and it is not equal to 2
// 3 it prints 3 because 3 is less than 6 and it is not equal to 2
//it stops because 4 the statement says to stop

void main() {
for (int i = 0; i < 6; i++) {
if (i == 2) continue;
if (i == 4) break;
print(i);
}
}