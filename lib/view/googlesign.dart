import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';

class GoogleSign extends StatelessWidget {
  GoogleSign({super.key});
  FirebaseFunction obj = FirebaseFunction();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                await obj.signInWithGoogle();
              },
              child: Text("Google"))
        ],
      ),
    );
  }
}
