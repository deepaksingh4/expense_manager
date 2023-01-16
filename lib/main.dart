import 'package:expense_manager/Screens/Login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseManager());
}

class ExpenseManager extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
           body: Login()
      )
    );
  }
}
