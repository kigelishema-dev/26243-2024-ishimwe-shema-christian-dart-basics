//reg number 26243/2024
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