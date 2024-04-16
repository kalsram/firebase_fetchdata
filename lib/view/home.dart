import 'package:firebase_user2/view/account.dart';
import 'package:firebase_user2/view/add-home.dart';
import 'package:firebase_user2/view/auction.dart';
import 'package:firebase_user2/view/homepage.dart';
import 'package:firebase_user2/view/search.dart';
import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/bike3.jpeg',
                      width: 210,
                      height: 250,
                    ),
                    SizedBox(width: 16.0),
                    Image.asset(
                      'lib/asset/bike2.jpeg',
                      width: 210,
                      height: 250,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Vintage CB350',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    RichText(
                        text: TextSpan(
                            text: 'Time till:',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(
                            text: ' 22/03/2024 2:12',
                            style: TextStyle(color: Colors.red),
                          ),
                        ])),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hondas wery first motorcycle,the D-type,was also known\n\nas the "Dream" and it was exactly that for the engineers at\n\nHonda.Feautures that for are expected,and familiar today like\n\ntelescoping front forks,double\n\n-downtube/double-cradle frame,and a teardrop-shaped \n\nfuel tank were honed on the humble d-type.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Text(''),
                    Spacer(),
                    Text('current:'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Rs.190000',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(110, 45)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 248, 247, 247)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('your bid:Rs 45000.00'),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
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
        ),
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
