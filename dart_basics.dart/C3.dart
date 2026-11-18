// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
void main() {
int? bonus;
print(bonus ?? 50);
bonus ??= 70;
bonus ??= 90;
print(bonus);
int n = 10;
do {
print(n);
n += 3;
} while (n < 10);
}
