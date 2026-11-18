// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
String initials(String fullName) {
  String cleaned = fullName.trim();

  if (cleaned.isEmpty) {
    return '';
  }

  List<String> names = cleaned.split(RegExp(r'\s+'));
  String result = '';

  int i = 0;
  while (i < names.length) {
    result += '${names[i][0].toUpperCase()}.';
    i++;
  }

  return result;
}
void main(List<String> args) {
print(initials('Christian Ishimwe Shema'));
print(initials(' ana uwase '));
print(initials(' '));
}