// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_user2/model/usermodel.dart';
// import 'package:firebase_user2/view/fetch.dart';
// import 'package:firebase_user2/view_model/function.dart';
// import 'package:flutter/material.dart';

// class Database extends StatefulWidget {
//   const Database({super.key});

//   @override
//   State<Database> createState() => _DatabaseState();
// }

// class _DatabaseState extends State<Database> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController addressController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController mailController = TextEditingController();
//   final TextEditingController occupationController = TextEditingController();
//   final TextEditingController dobController = TextEditingController();

//   FirebaseFunction obj = FirebaseFunction();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User Details'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(hintText: 'Name'),
//               ),
//             ),
//             const SizedBox(
//               height: 30.0,
//             ),
            
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: mailController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'mail',
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: phoneController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'Phone',
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: occupationController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'occupation',
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: addressController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'address',
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: dobController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'dob',
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2,
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   hintText: 'password',
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30.0,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 obj.addToDatabase(Usermodel(
//                     mail: mailController.text,
//                     password: int.parse(passwordController.text),
//                     occupation: occupationController.text,
//                     address: addressController.text,
//                     phone: int.parse(phoneController.text),
//                     dob: int.parse(dobController.text),
                    
//                     name: nameController.text));

//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(builder: (context) => Fetch()),
//                 // );
//               },
//               child: const Text('Upload'),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Fetch()),
//                   );
//                 },
//                 child: Text('View Database'))
//           ],
//         ),
//       ),
//     );
//   }
// }
