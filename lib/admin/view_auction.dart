import 'package:flutter/material.dart';

class View_auction extends StatefulWidget {
  const View_auction({super.key});

  @override
  State<View_auction> createState() => _View_auctionState();
}

class _View_auctionState extends State<View_auction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('view')),
              SizedBox(
                height: 20,
              ),
              TextButton(onPressed: () {}, child: Text('Remove'))
            ],
          ),
        ],
      ),
    ));
  }
}
