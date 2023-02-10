import 'package:expense_manager/Core/AppExceptions.dart';
import 'package:expense_manager/Core/app_colors.dart';
import 'package:expense_manager/Core/router.dart';
import 'package:expense_manager/Features/Login/Presentation/login_cubit.dart';
import 'package:expense_manager/Features/Login/Presentation/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginSates>(builder: (cxt, state) {
      if (state is NotLoggedIn) {
        return Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: ListView(
                       shrinkWrap: true,
                        children: [
                          TextField(
                            decoration: const InputDecoration(
                              hintText: 'Username', 
                              labelText: 'Username',
                            ),
                            controller: usernameController,
                          ),
                          TextField(
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                            ),
                            obscureText: true,
                            controller: passwordController,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: const Text('Login'),
                                  onPressed: () {
                                    context.read<LoginCubit>().logInUser(
                                        username: usernameController.text,
                                        password: passwordController.text);
                                  },
                                )
                              ]),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    }, listener: (ctx, state) {
      if (state is LoggedIn) {
        Navigator.of(context).pushReplacementNamed(Navigation.dashboard);
      }
    });
  }
}
