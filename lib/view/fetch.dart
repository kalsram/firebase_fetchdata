import 'package:firebase_user2/model/usermodel.dart';

import 'package:firebase_user2/view/update.dart';
import 'package:firebase_user2/view/update2.dart';
import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Fetch extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Fetch({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFunction obj = FirebaseFunction();
    final firebase = FirebaseFirestore.instance;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Details'),
        centerTitle: true,
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
                      color: Colors.grey,
                      elevation: 0.5,
                      shadowColor: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Text(document['Name'],
                                  style: TextStyle(fontSize: 20)),
                              title: Text('Age: ${document['age']}'),
                              subtitle: Text('Id: ${document['id']}'),
                            ),
                            Divider(
                              height: 2.0,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UpdateUserDetails()),
                                      );
                                    },
                                    child: Text('Update')),
                                SizedBox(
                                  height: 30,
                                ),
                                Spacer(),

                                ElevatedButton(
                                    onPressed: () async {
                                      obj.deleteuser(document.id);
                                    },
                                    child: Text('Delete'))
                                // ElevatedButton(
                                //     onPressed: () {
                                //       deleteuser(id) async {
                                //         firebase
                                //             .collection('User')
                                //             .doc(id)
                                //             .delete();
                                //       }
                                //     },
                                //     child: Text('Delete')),
                              ],
                            )
                          ],
                        ),
                      ));
                });
          }),
    );
  }
}
