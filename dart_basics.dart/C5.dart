// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));
void drawTriangle(int height) {
  if (height <= 0) {
    return;
  }

  int row = 1;

  while (row <= height) {
    int spaces = height - row;
    int s = 0;

    while (s < spaces) {
      print('',);
      s++;
    }

    String line = '';
    int j = 0;

    while (j < row) {
      if (row % 2 == 0) {
        line += '#';
      } else {
        line += '*';
      }
      j++;
    }

    print('${' ' * spaces}$line');
    row++;
  }
}