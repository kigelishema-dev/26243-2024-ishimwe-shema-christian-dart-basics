//reg number 26243/2024
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
