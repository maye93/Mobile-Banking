import 'transfer.dart';

class UpdateBalance extends Variables {
  money() {
    return super.money();
  }
}

class AdminAccount{
  String _privAcc = "admin";
  String _privPass = "admin";
  static int _privBalance = 100000;
  String _privCard = "1234 5678 9000";
  String _privExpiry = "12/34";
  int _transferMoney = UpdateBalance().money();
  int loop = 0;

  account() {
    return _privAcc;
  }

  password() {
    return _privPass;
  }

  balance() {
    _privBalance -= _transferMoney;
    return _privBalance;
  }

  card() {
    return _privCard;
  }

  expiry() {
    return _privExpiry;
  }
}