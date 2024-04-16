import 'package:firebase_user2/view/auction1.dart';
import 'package:flutter/material.dart';

class SearchAnt extends StatefulWidget {
  const SearchAnt({super.key});

  @override
  State<SearchAnt> createState() => _SearchAntState();
}

class _SearchAntState extends State<SearchAnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 235, 235),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/asset/antique.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Antique furniture ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'DESCRIPTION',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  ' current: ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Rs.9910',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
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
                      Text(''),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Auction1()),
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
          ),
        ],
      )),
    );
  }
}
