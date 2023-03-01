
import 'package:Game_Finder/Core/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileWidgets {

  //Change password
  static changePassword(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 10.0,
            ),
            title: const Text(
              "Change Password",
              style: TextStyle(fontSize: 24.0),
            ),
            content: SizedBox(
              height: 310,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "New Password",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'New Password',
                            labelText: 'Password'),
                        obscureText: true,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Confirm Password",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password'),
                        obscureText: true,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.profileBGColor,
                            textStyle: const TextStyle(color: Colors.black)
                          // fixedSize: Size(250, 50),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  //forgot password
  static forgotPassword(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 10.0,
            ),
            title: const Text(
              "Forgot Password",
              style: TextStyle(fontSize: 24.0),
            ),
            content: SizedBox(
              height: 200,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Enter Your Registered Email ID ",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Email Id Here',
                            labelText: 'Email Id'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.profileBGColor,
                          textStyle: const TextStyle(color: Colors.black)
                          // fixedSize: Size(250, 50),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  // About the app
  static aboutTheApp(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            contentPadding: const EdgeInsets.only(
              top: 10.0,
            ),
            title: const Text(
              "About The App",
              style: TextStyle(fontSize: 24.0),
            ),
            content: SizedBox(
              height: 400,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'A gaming application '
                            'is a web, mobile, or desktop application that enables'
                            ' users to play games against each other.'
                            ' Gaming apps may also include features'
                            ' for managing the game and interacting with friends.'
                            'Games are often categorized as either casual games'
                            ' or immersive, engaging games. Casual games are popular on mobile devices '
                            'and can also be found on social media platforms.'
                            ' Classic examples of casual games include Solitaire,'
                            ' Candy Crush, and Bejeweled. Immersive,'
                            ' engaging games use virtual reality technologies'
                            ' to immerse users in the gaming experience'
                            ' and encourage them to interact with other players'
                            ' (or non-player characters).'
                            ' Popular immersive games include Minecraft,'
                            ' World of Warcraft, and Fortnite.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}