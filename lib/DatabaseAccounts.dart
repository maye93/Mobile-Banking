class AdminAccount {
  String _privAcc = "admin";
  String _privPass = "admin";
  int _privBalance = 100000;

  account() {
    return _privAcc;
  }

  password() {
    return _privPass;
  }

  balance() {
    return _privBalance;
  }
}