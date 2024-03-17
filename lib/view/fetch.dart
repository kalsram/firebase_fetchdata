import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Fetch extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Fetch({super.key});

  @override
  Widget build(BuildContext context) {
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
                              height: 0.5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ));
                });
          }),
    );
  }
}
