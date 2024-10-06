class TransactionModel{
  final String title,date,amount;
  final bool isWithdrawal;

  const TransactionModel({required this.title, required this.date, required this.amount, required this.isWithdrawal});

}
List<TransactionModel> itemsTransaction = const [
  TransactionModel(title: "Cash Withdrawal", date: "13 April 2022", amount: r"$20,129" , isWithdrawal: true),
  TransactionModel(title: "Landing Page project", date: "13 Apr, 2022 at 3:30 PM", amount: r"$2,000" , isWithdrawal: false),
  TransactionModel(title: "Juni Mobile App project", date: "13 April 2022", amount: r"$20,129" , isWithdrawal: false),

];