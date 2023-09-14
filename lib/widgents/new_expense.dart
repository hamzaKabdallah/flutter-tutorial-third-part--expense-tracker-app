import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  String _enteredTitle = '';

  void _onTitleChanged(String title) {
    _enteredTitle = title;
  }

  void _onSubmitPress() {
    print(_enteredTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _onTitleChanged,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          ElevatedButton(onPressed: _onSubmitPress, child: const Text('submit'))
        ],
      ),
    );
  }
}
