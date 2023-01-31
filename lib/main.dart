import 'package:expense_manager/Features/MainView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseManager());
}

class ExpenseManager extends StatelessWidget {
  const ExpenseManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: MainView()));
  }
}
