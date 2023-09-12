import 'package:uuid/uuid.dart';

class Expense {
  final uuid = const Uuid();

  Expense({required this.title, required this.amount, required this.date}) {
    id = uuid.v4();
  }

  late String id;
  final String title;
  final double amount;
  final DateTime date;
}
