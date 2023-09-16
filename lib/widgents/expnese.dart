import 'package:expense_app/widgents/expenses_list/expenses_list.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgents/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.3,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.4,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  void _openAddExpensesOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: addExpense),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter ExpenseTracker'), actions: [
        IconButton(
            onPressed: _openAddExpensesOverlay,
            icon: const Icon(
              Icons.add,
            ))
      ]),
      body: Column(
        children: [
          const Text('chart'),
          Expanded(
            child: ExpensesList(
                expenses: _registeredExpenses, onRemove: removeExpense),
          ),
        ],
      ),
    );
  }
}
