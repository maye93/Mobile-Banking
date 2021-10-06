class AdminAccount {
  String _privAcc = "admin";
  String _privPass = "admin";
  int _privBalance = 100000;
  String _privCard = "1234 5678 9000";
  String _privExp = "12/34";

  account() {
    return _privAcc;
  }

  password() {
    return _privPass;
  }

  balance() {
    return _privBalance;
  }

  card() {
    return _privCard;
  }

  exp() {
    return _privExp;
  }
}