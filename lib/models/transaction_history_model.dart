class TransactionModel {
  final String name;
  final String date;
  final String amount;
  final bool isWithdrawl;

  const TransactionModel(
      {required this.name,
      required this.date,
      required this.amount,
      required this.isWithdrawl});
}
