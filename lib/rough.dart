import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textediting extends StatefulWidget {
  const textediting({super.key});

  @override
  State<textediting> createState() => _texteditingState();
}

class _texteditingState extends State<textediting> {
  final TextEditingController noufal = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: noufal,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          ElevatedButton
            (onPressed: ()
          {
            setState(() {
                    noufal.text = "1";
            });
          }, child: Text('1')),

          ElevatedButton(onPressed: ()
          {
            setState(() {
              noufal.text= "2";
            });
          },
              child: Text('2'))
        ],
      ),

    );
  }
}
