import 'package:expense_app/widgents/expnese.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Expenses(),
    ),
  );
}
