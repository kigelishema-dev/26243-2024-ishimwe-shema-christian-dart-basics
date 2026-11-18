// Student: <ishimwe christian shema>
// Reg no: <26243/2024>
const String regNo = '26243';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  

  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String formatRwf(int amount) {
  

  String number = amount.toString();

  bool negative = number.startsWith('-');

  String digits = negative
      ? number.substring(1)
      : number;

  String result = '';
  int i = digits.length - 1;
  int count = 0;

  while (i >= 0) {
    result = digits[i] + result;
    count++;

    if (count % 3 == 0 && i > 0) {
      result = ',' + result;
    }

    i--;
  }

  if (negative) {
    result = '-' + result;
  }

  return '$result RWF';
}

bool isValidPin(String pin) {
  // by ICS

  if (pin.length != 5) {
    return false;
  }

  if (pin == '12345') {
    return false;
  }

  int i = 0;

  while (i < pin.length) {
    if (pin.codeUnitAt(i) < 48 ||
        pin.codeUnitAt(i) > 57) {
      return false;
    }

    i++;
  }

  if (pin[0] == pin[1] &&
      pin[1] == pin[2] &&
      pin[2] == pin[3] &&
      pin[3] == pin[4]) {
    return false;
  }

  return true;
}

int sendMoney(int balance, int amount) {
  

  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance = balance - amount - fee;

  print(
    'Sent ${formatRwf(amount)} '
    '(fee ${formatRwf(fee)}). '
    'New balance: ${formatRwf(balance)}'
  );

  return balance;
}

int buyAirtime(int balance, int amount) {
  

  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance = balance - amount;

  print(
    'Airtime purchased: ${formatRwf(amount)}. '
    'New balance: ${formatRwf(balance)}'
  );

  return balance;
}

void main() {
  

  

  

  print('PIN 12345: ${isValidPin('12345')}');
  print('PIN 77777: ${isValidPin('77777')}');
  print('PIN 4821: ${isValidPin('4821')}');
  print('PIN 48a21: ${isValidPin('48a21')}');
  print('PIN 4821$d: ${isValidPin('4821$d')}');

  

  int balance = 20000 + t * 500;

  print('Starting balance: ${formatRwf(balance)}');

 

  int amount = (d + 1) * 3000;

  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);

  

  balance = buyAirtime(balance, 1000);

  

  balance = sendMoney(balance, 0);

  

  balance = sendMoney(balance, 200000);

  

  print('Final balance: ${formatRwf(balance)}');

  

  print(formatRwf(0));          // Expected: 0 RWF
  print(formatRwf(999));        // Expected: 999 RWF
  print(formatRwf(1000));       // Expected: 1,000 RWF
  print(formatRwf(1250000));   // Expected: 1,250,000 RWF
  print(formatRwf(-5000));      // Expected: -5,000 RWF

  print(isValidPin('54321'));   // Expected: true
  print(isValidPin('00000'));   // Expected: false
  print(isValidPin('12A45'));   // Expected: false
}