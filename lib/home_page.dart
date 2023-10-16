import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberofTimesTapped = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Tapped',
            style: TextStyle(fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                numberofTimesTapped++;
              });
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.green[200],
              child: Text(
                'TAP HERE',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
