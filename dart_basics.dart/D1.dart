// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
int count = 1;
void bump() {
int count = 10;
count++;
}
void doubleIt(int value) {
value = value * 2;
}
int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;
void main() {
bump();
print(count);
int v = 5;
doubleIt(v);
print(v);
print(addVat(1000));
print(addVat(999));
print(addVat(1000, rate: 0));
}
