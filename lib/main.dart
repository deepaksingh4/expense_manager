import 'package:Game_Finder/Core/router.dart';
import 'package:Game_Finder/Features/Listing/Presentation/ListGames.dart';
import 'package:Game_Finder/Features/Login/Presentation/login.dart';
import 'package:Game_Finder/Features/Welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'Features/Login/Presentation/login_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  runApp(const ExpenseManager());
}

class ExpenseManager extends StatelessWidget {
  const ExpenseManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(),
        child: MaterialApp(
          onGenerateRoute: generateRoutes,
          home: const Login(),
          builder: EasyLoading.init(),
        ));
  }
}

