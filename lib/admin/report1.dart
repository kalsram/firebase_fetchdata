import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_user2/admin/post_notifications.dart';
import 'package:firebase_user2/admin/report.dart';
import 'package:firebase_user2/admin/search_auction.dart';
import 'package:firebase_user2/admin/single_user.dart';
import 'package:firebase_user2/admin/view_auction.dart';
import 'package:firebase_user2/admin/view_report.dart';
import 'package:firebase_user2/admin/view_user.dart';
import 'package:firebase_user2/view_model/function.dart';
import 'package:flutter/material.dart';

class Report1 extends StatefulWidget {
  const Report1({super.key});

  @override
  State<Report1> createState() => _Report1State();
}

class _Report1State extends State<Report1> {
  FirebaseFunction obj = FirebaseFunction();
  final firebase = FirebaseFirestore.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    View_report(),
    View_auction(),
    UserDetailsScreen(),
    User(),
    Post_notifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(35, 2, 27, 1),
      appBar: AppBar(
        title: Text(
          'Admin',
        ),
        leading: IconButton(
          iconSize: 40,
          icon: Icon(Icons.admin_panel_settings_rounded),
          onPressed: () {},
        ),
        backgroundColor: Color.fromARGB(255, 2, 14, 84),
      ),
      body: Row(
        children: [
          // Left Container
          Container(
            width: MediaQuery.of(context).size.width / 4,
            color: Color.fromARGB(255, 66, 4, 59),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 9, 1, 1)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentPageIndex = 0;
                    });
                  },
                  child: Text('view reports', textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 9, 1, 1)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentPageIndex = 1;
                    });
                  },
                  child: Text('view Auctions', textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 9, 1, 1)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentPageIndex = 2;
                    });
                  },
                  child: Text('Single user', textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 9, 1, 1)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentPageIndex = 3;
                    });
                    Report();
                  },
                  child: Text('view users', textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 9, 1, 1)),
                  ),
                  onPressed: () {
                    setState(() {
                      _currentPageIndex = 4;
                    });
                  },
                  child:
                      Text('post notifications', textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
          // Right Container
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 186, 35, 121),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 500,
                    height: 600,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 231, 231),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _pages[_currentPageIndex],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
