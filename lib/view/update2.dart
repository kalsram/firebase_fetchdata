import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateUserDetails extends StatefulWidget {
  @override
  _UpdateUserDetailsState createState() => _UpdateUserDetailsState();
}

class _UpdateUserDetailsState extends State<UpdateUserDetails> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User Details'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'age'),
              
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // Get current user
                  User? currentUser = FirebaseAuth.instance.currentUser;

                  // Update user details in Firestore
                  await FirebaseFirestore.instance
                      .collection('User')
                      .doc(currentUser!.uid)
                      .update({
                    'Name': _nameController.text,
                    'age': _emailController.text,
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('User details updated successfully'),
                  ));
                }
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}