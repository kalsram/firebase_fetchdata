import 'package:firebase_user2/view/account.dart';
import 'package:firebase_user2/view/add-home.dart';
import 'package:firebase_user2/view/add.dart';
import 'package:firebase_user2/view/auction.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/search.dart';
import 'package:flutter/material.dart';


class Services extends StatefulWidget {
  Services({super.key});

  @override
  State<Services> createState() => _ServiceState();
}

class _ServiceState extends State<Services> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(60, 208, 203, 203),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Add()),
                        );
                      },
                      child: Text(
                        'item',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Services()),
                        );
                      },
                      child: Text(
                        'Service',
                        style: TextStyle(fontSize: 17, color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 550,
                    width: 500,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Service',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'asset/no_image.jpeg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Title',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Description',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Base amount',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Duration',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Addhome()),
                            );
                          },
                          child: Text('Submit'),
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(110, 45)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 240, 30, 96)),
                          ),
                        )
                      ],
                    ),
                  )),
            ]),
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
