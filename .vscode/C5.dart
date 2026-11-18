//reg number 26243/2024
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