import 'package:flutter/material.dart';
import 'package:frontpage/blur.dart';
import 'package:frontpage/botnavtask.dart';
import 'package:frontpage/instagramprofilepage.dart';
import 'package:frontpage/productpage.dart';
import 'package:frontpage/amazonhomepage.dart';
import 'package:frontpage/navigationtask.dart';
import 'package:frontpage/newtask.dart';
import 'package:frontpage/spotifypage.dart';
import 'package:frontpage/texteditingcontroller.dart';
import 'package:frontpage/validation.dart';
import 'package:frontpage/validationpage.dart';
import 'package:frontpage/bottomnavigation.dart';
import 'package:frontpage/visibility.dart';

import 'Botnavi.dart';
import 'NEWLIST.dart';
import 'calculator.dart';
import 'color.dart';
import 'creatinglist.dart';
import 'demo.dart';
import 'listcontinue.dart';
import 'rough.dart';
import 'validation task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   newlist(),
    );
  }
}


