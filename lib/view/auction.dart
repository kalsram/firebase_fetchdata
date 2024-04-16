import 'package:firebase_user2/view/account.dart';
import 'package:firebase_user2/view/add.dart';
import 'package:firebase_user2/view/auction1.dart';
import 'package:firebase_user2/view/auction2.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/search.dart';
import 'package:firebase_user2/view/winner.dart';
import 'package:flutter/material.dart';

class Auction extends StatefulWidget {
  const Auction({super.key});

  @override
  State<Auction> createState() => _AuctionState();
}

class _AuctionState extends State<Auction> {
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
      body: Column(children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Auction()),
                );
              },
              child: Text(
                'open',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Auction1()),
                );
              },
              child: Text(
                'closed',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Auction2()),
                );
              },
              child: Text(
                'Yours',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/asset/jackeet1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Men\'s Jacket ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'DESCRIPTION',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Time till',
                                  style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(
                                  text: ' 22/03/2024 2.12',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                ' current: ',
                                style: TextStyle(fontSize: 16),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Rs.190',
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      Size(110, 45)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 248, 247, 247)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text('your bid Rs:45.00'),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Winner()),
                        );
                      },
                      child: Text('Bid'),
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(110, 45)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 240, 30, 96)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
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
              MaterialPageRoute(builder: (context) => Add()),
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
