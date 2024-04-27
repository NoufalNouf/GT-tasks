import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blur.dart';


class vald extends StatefulWidget {
  const vald({super.key});

  @override
  State<vald> createState() => _valdState();
}

class _valdState extends State<vald> {

  final a = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: a,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding (
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (data) {
                    if (data == null || data.isEmpty) {
                      return "please enter valid name";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Name',
                    prefixIcon: Icon(Icons.person)
          
                  ),
          
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (data) {
                    if (data?.length!= 10  ) {
                      return "please enter valid phone number by ";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Mobile Number',
                      prefixIcon: Icon(Icons.phone)
          
                  ),
          
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (data) {
                    if (!RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        .hasMatch(data!) || data.isEmpty) {
                      return "please enter valid Email ID";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email)
                  ),
          
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (data) {
                    if (data == null || data.isEmpty) {
                      return "please enter valid password";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.password)
                  ),
          
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>()),
                    // );
          
          
              //  if(a.currentState!.validate())
              //     {
              //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
              // }
              }, child: Text("Sign Up")),
          
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bluringg()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bluringg()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bluringg()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bluringg()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyan,
                ),
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}
/// reg exp