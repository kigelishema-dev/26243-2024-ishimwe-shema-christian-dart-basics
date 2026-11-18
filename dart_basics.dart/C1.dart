// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
void main() {
for (int i = 0; i < 6; i++) {
if (i == 2) continue;
if (i == 4) break;
print(i);
}
}