import 'package:flutter/material.dart';
import 'package:frontpage/validation.dart';

import 'newtask.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;

  final pages = [
    vald(),
    newpage(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
       ],
       currentIndex:_index ,
       onTap: tap,
     ) ,
    );
  }
}

