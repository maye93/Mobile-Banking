class TransactionModel {
  String date;
  String mssg;
  String header;

  TransactionModel({
    required this.date,
    required this.mssg,
    required this.header,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    date: "9/21",
    mssg: "PHP 100,000 was deposited to your account.",
    header: "Deposited",
  ),
  TransactionModel(
    date: "9/20",
    mssg: "PHP 6,000 was withdrawn from your account.",
    header: "Withdraw",
  ),
  TransactionModel(
    date: "9/18",
    mssg: "JIG account was updated",
    header: "Account",
  ),
  
  TransactionModel(
    date: "9/15",
    mssg: "PHP 34,000 was transferred from your account",
    header: "Transfer Money",
  ),
  TransactionModel(
    date: "9/10",
    mssg: "JIG account successfully created",
    header: "Account",
  ),
];
