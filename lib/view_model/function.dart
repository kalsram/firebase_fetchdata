import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_user2/model/usermodel.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseFunction {
  final firebase = FirebaseFirestore.instance;

  //  add
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
        .doc("id")
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
      print("error");
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

  //goole sign

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
