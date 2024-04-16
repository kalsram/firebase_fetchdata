import 'package:firebase_user2/view/account.dart';
import 'package:firebase_user2/view/add-home.dart';
import 'package:firebase_user2/view/auction.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/search.dart';
import 'package:flutter/material.dart';


class Feedbacks extends StatefulWidget {
  Feedbacks({super.key});

  @override
  State<Feedbacks> createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'Feedback',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 15,
                        )),
                    border: OutlineInputBorder(gapPadding: 4.0),
                    hintStyle: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(77, 19, 18, 18))),
              ),
            ]),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Email Address',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email_rounded,
                          size: 15,
                        )),
                    border: OutlineInputBorder(gapPadding: 4.0),
                    hintStyle: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(77, 19, 18, 18))),
              ),
              SizedBox(height: 10.0),
              Text('Share your experience in scaling',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 4.0),
                    hintText: 'Add your comments',
                    hintStyle: TextStyle(
                        fontSize: 13,
                        color: const Color.fromARGB(77, 19, 18, 18))),
              ),
              SizedBox(
                height: 40,
              ),
              Row(children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 234, 59, 47)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ]),
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Auction()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Addhome()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Account()),
            );
          }

          _onItemTapped(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plumbing_sharp),
            label: 'My Auction',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.red,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
