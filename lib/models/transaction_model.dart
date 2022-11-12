class Transaction {
  final String imageUrl;
  final String name;
  final String date;
  final String amount;
  final String status;

  Transaction({
    required this.amount,
    required this.name,
    required this.imageUrl,
    required this.date,
    required this.status,
  });
}
