import 'package:expense_manager/Core/router.dart';
import 'package:expense_manager/Features/Welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  runApp(const ExpenseManager());
}

class ExpenseManager extends StatelessWidget {
  const ExpenseManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        onGenerateRoute: generateRoutes,
        home: SafeArea(
            child: Welcome()));
  }
}
