import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UIDdelete extends StatefulWidget {
  @override
  _UIDManagementScreenState createState() => _UIDManagementScreenState();
}

class _UIDManagementScreenState extends State<UIDdelete> {
  late TextEditingController _uidController;

  @override
  void initState() {
    super.initState();
    _uidController = TextEditingController();
  }

  @override
  void dispose() {
    _uidController.dispose();
    super.dispose();
  }

  Future<void> deleteUser(String uid) async {
    try {
      await FirebaseFirestore.instance.collection('User').doc(uid).delete();
    } catch (e) {
      print('Error deleting user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UID Management'),
      ),
      body: Row(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('User').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
                  return Center(child: Text('No UIDs available'));
                }

                return ListView(
                  children: snapshot.data!.docs.map((doc) {
                    String uid = doc.id;
                    return ListTile(
                      title: Text(uid),
                      onTap: () {
                        _uidController.text = uid;
                      },
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _uidController,
                  decoration: InputDecoration(
                    labelText: 'UID',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    String uid = _uidController.text.trim();
                    if (uid.isNotEmpty) {
                      deleteUser(uid);
                      _uidController.clear();
                    }
                  },
                  child: Text('Remove'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
