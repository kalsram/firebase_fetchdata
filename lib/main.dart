import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_user2/admin/login.dart';
import 'package:firebase_user2/admin/remove_user.dart';
import 'package:firebase_user2/admin/report.dart';
import 'package:firebase_user2/admin/report1.dart';
import 'package:firebase_user2/admin/single_user.dart';
import 'package:firebase_user2/firebase_options.dart';

import 'package:firebase_user2/view/googlesign.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/register.dart';

import 'package:firebase_user2/view/store.dart';
import 'package:firebase_user2/view/welcome.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Welcome(),
    );
  }
}
