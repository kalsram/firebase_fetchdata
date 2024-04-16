import 'package:firebase_auth/firebase_auth.dart';

class Usermodel {
  String? id;
  String name;
  int phone;
  String mail;
  String address;
  int dob;
  int password;
  String occupation;

  Usermodel(
      {required this.dob,
      required this.phone,
      required this.mail,
      required this.occupation,
      required this.password,
      required this.address,
      required this.name,
      this.id});

  Map<String, dynamic> toJson(String docId) {
    return {
      "name": name,
      "phone": phone,
      "address": address,
      "occupation": occupation,
      "mail": mail,
      "dob": dob,
      "password": password,
      "id": docId
    };
  }

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(
        phone: json["phone"],
        occupation: json["occupation"],
        address: json["address"],
        mail: json["mail"],
        password: json["password"],
        dob: json["dob"],
        name: json["name"],
        id: json["id"]);
  }
}
