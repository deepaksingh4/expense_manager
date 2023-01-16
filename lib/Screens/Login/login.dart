import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
  return LoginState();
  }
}

class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return
      Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Username'
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[

          MaterialButton(
           color: Colors.teal,
           textColor: Colors.white,
           child: const Text('Login'),
           onPressed: (){
            setState(() {
              print('button clicked');
            });
          },
        )]
        ),
      ]
    );
  }
}