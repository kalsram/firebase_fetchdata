import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_user2/model/usermodel.dart';
import 'package:firebase_user2/view/fetch.dart';
import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';

class Database extends StatefulWidget {
  const Database({super.key});

  @override
  State<Database> createState() => _DatabaseState();
}

class _DatabaseState extends State<Database> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  FirebaseFunction obj = FirebaseFunction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: ageController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Age',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                
                obj.addToDatabase(Usermodel(
                    age: int.parse(ageController.text),
                    name: nameController.text));

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fetch()),
                );

              },
              child: const Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
