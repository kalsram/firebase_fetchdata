import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  FirebaseFunction obj = FirebaseFunction();
  final firebase = FirebaseFirestore.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User details'),
      ),
      body: StreamBuilder(
          stream: firestore.collection('User').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  DocumentSnapshot document = snapshot.data!.docs[index];
                  return Card(
                      color: Color.fromARGB(255, 186, 35, 121),
                      elevation: 0.5,
                      shadowColor: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('name: ${document['name']}'),
                            Text('mail: ${document['mail']}'),
                            Text('adress: ${document['address']}'),
                            Text('dob: ${document['dob']}'),
                            Text('phone: ${document['phone']}'),
                            Text('id: ${document['id']}'),

                            // ListTile(
                            //   leading: Text(document['name'],
                            //       style: TextStyle(fontSize: 20)),
                            //   title: Text('Adress: ${document['address']}'),
                            //   subtitle: Text('Id: ${document['id']}'),
                            // ),
                            // Divider(
                            //   height: 2.0,
                            //   color: Colors.grey,
                            // ),
                          ],
                        ),
                      ));
                });
          }),
    );
  }
}
