// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
//prediction
//0
//2
//0
void main() {
int x = 3; 
String result = '';
while (x > 0) {
if (x % 2 == 0) {
result += 'E';
} else {
result += 'O';
}
x -= 3;
}
print(result);
print(result.length);
print(result.isEmpty ? 'nothing' : result[0]);
}
