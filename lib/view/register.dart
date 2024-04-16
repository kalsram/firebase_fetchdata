import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_user2/model/usermodel.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/welcome.dart';
import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    FirebaseFunction obj = FirebaseFunction();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController mailController = TextEditingController();
    final TextEditingController occupationController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController dobController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Full name'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: mailController,
              decoration: InputDecoration(labelText: 'mail'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: occupationController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'occupation'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone number'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: dobController,
              decoration: InputDecoration(labelText: 'DOB'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'password'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    obj.addToDatabase(Usermodel(
                        name: nameController.text,
                        address: addressController.text,
                        mail: mailController.text,
                        occupation: occupationController.text,
                        phone: int.parse(phoneController.text),
                        dob: int.parse(dobController.text),
                        password: int.parse(passwordController.text)));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(110, 45)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 234, 59, 47)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
