import 'package:flutter/material.dart';
import 'package:frontpage/calculator.dart';
import 'package:frontpage/instagramprofilepage.dart';
import 'package:frontpage/productpage.dart';
import 'package:frontpage/amazonhomepage.dart';
import 'package:frontpage/spotifypage.dart';
import 'package:frontpage/validation%203.dart';
import 'package:frontpage/settingslisttilepage.dart';


class nav1 extends StatefulWidget {
  const nav1({super.key});

  @override
  State<nav1> createState() => _nav1State();
}

class _nav1State extends State<nav1> {


  int nouf=0;

  final pages=[
    mydemo(),
    spotify1(),
    insta(),
    calci(),
    nav4()
  ];

  void tap (index)
  {
    setState(() {
      nouf=index;
    });

  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: pages[nouf],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "music"),
          BottomNavigationBarItem(icon: Icon(Icons.insert_emoticon_sharp),label: "instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: "calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),




        ],
        currentIndex:nouf,
        onTap: tap,
      ),
    );
  }
}
