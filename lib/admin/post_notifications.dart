import 'package:firebase_user2/admin/report1.dart';
import 'package:flutter/material.dart';

class Post_notifications extends StatefulWidget {
  const Post_notifications({super.key});

  @override
  State<Post_notifications> createState() => _Pst_notificationsState();
}

class _Pst_notificationsState extends State<Post_notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
              border: OutlineInputBorder(gapPadding: 4.0),
              hintText: 'post your notifications here',
              hintStyle: TextStyle(
                  fontSize: 13, color: const Color.fromARGB(77, 19, 18, 18))),
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 186, 35, 121)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Report1()),
                );
              },
              child: Text(
                'SUBMIT',
              ),
            ),
          ],
        )
      ],
    ));
  }
}
