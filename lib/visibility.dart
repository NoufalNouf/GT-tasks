import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class visi extends StatefulWidget {
  const visi({super.key});

  @override
  State<visi> createState() => _visiState();
}

class _visiState extends State<visi> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _nouf=false;

  void nouf(){
    setState(() {
      _nouf = name.text.isNotEmpty && password.text.isNotEmpty == true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          TextFormField(
            onChanged: (_){
              nouf();
            },
            controller: name,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              border: OutlineInputBorder(),
              hintText: "Enter name"
            ),
          ),
          SizedBox(height: 40,),
          TextFormField(
            onChanged: (_){
              nouf();
            },
            controller: password,
            decoration: InputDecoration(
                icon: Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: "Enter Password"
            ),
          ),
          SizedBox(height: 40,),
          Visibility(
            visible: _nouf,
            child: ElevatedButton(onPressed: (){

            }, child: Text("Login")),
          )
        ],
      ),
    );
  }
}
