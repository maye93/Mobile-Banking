import 'package:practice/transfer.dart';

class AccountBalance extends TransferMoneyScreen {
  int Money = 100000;

  get(int inputUser) {
    return inputUser - Money;
    print(inputUser);
  }

  // AccountBalance(this.inputUser);
}

// void main() {
//   AccountBalance m = new AccountBalance(15000);
//   print(m.get());
// }