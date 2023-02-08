import 'package:flutter/material.dart';

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
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const TextField(
            decoration:
                InputDecoration(hintText: 'Username', labelText: 'Username'),
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
                setState(() {
                  print(passwordController.text);
                });
              },
            )
          ]),
        ]),
      ),
    );
  }
}
