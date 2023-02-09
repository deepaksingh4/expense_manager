import 'package:expense_manager/Core/AppExceptions.dart';
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
    return BlocProvider(
      create: (context) => LoginCubit(),
      child:BlocBuilder<LoginCubit, LoginStates>(
        builder: (cubit, state) {
          switch (state){
            case LoginFailed:
            case LoggedIn:
            case NotLoggedIn:
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'Username', labelText: 'Username'),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    controller: passwordController,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            );
          }

        }
      )
    );
  }
}


