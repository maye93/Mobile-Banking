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
    mssg: "PHP 100,000 was added to your account.",
    header: "Investment",
  ),
  TransactionModel(
    date: "9/20",
    mssg: "PHP 5,000 was withdrawn from your account.",
    header: "Admin",
  ),
  TransactionModel(
    date: "9/18",
    mssg: "JIG account successfully created",
    header: "Account",
  ),
];
