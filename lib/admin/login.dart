import 'package:firebase_user2/admin/report.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String Email = 'gorilla@gmail.com';
  final String Password = 'password';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  void login() {
    String enteredEmail = emailController.text;
    String enteredPassword = passwordController.text;

    if (enteredEmail == Email && enteredPassword == Password) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Report()),
      );
    } else {
      setState(() {
        errorMessage = 'Invalid email or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 2, 123),
      appBar: AppBar(
        title: Text(
          'Admin',
        ),
        leading: IconButton(
          iconSize: 40,
          icon: Icon(Icons.admin_panel_settings_rounded),
          onPressed: () {},
        ),
        backgroundColor: Color.fromARGB(255, 2, 14, 84),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            color: Colors.white,
            height: 500,
            width: 500,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Admin Login',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Mail',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 24, 3, 94)),
                  ),
                  onPressed: login,
                  child: Text('Login'),
                ),
                SizedBox(height: 10.0),
                Text(
                  errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
