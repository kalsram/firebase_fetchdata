import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_user2/model/usermodel.dart';

class FirebaseFunction {
  final firebase = FirebaseFirestore.instance;

  //  get
  Future addToDatabase(Usermodel usermodel) async {
    final doc = firebase.collection('User').doc();
    doc.set(usermodel.toJson(doc.id));
  }

// delete
  Future deleteuser(id) async {
    firebase.collection('User').doc(id).delete();
  }

// update
  Future updateuser(newName, newAge) async {
    firebase
        .collection('User')
        .doc("crG5ULgdAC68cLAEB2Fh")
        .update({"Name": newName, "age": newAge});
  }

  // read

  Usermodel? usermodel;
  Usermodel? userrr;
  Future fetchSingleUserData() async {
    final documentSnapshot = await firebase.collection("User").doc().get();
    print("geeeeee");
    if (documentSnapshot.exists) {
      usermodel = Usermodel.fromJson(documentSnapshot.data()!);
    } else {
      print("errpor");
    }
  }

  List<Usermodel> UserList = [];
  Future fetchAllUserData() async {
    final collectionSnapshot = await firebase.collection("User").get();

    for (var singleuserData in collectionSnapshot.docs) {
      // print(a.data());
      UserList.add(Usermodel.fromJson(singleuserData.data()));
    }
  }
}
