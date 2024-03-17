class Usermodel {
  String? id;
  String name;
  int age;

  Usermodel({required this.age, required this.name, this.id});

  Map<String, dynamic> toJson(String docId) {
    return {"Name": name, "age": age, "id": docId};
  }

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(age: json["age"], name: json["Name"], id: json["id"]);
  }
}
