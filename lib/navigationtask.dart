import 'package:flutter/material.dart';

class navitask extends StatefulWidget {
  const navitask({super.key});

  @override
  State<navitask> createState() => _navitaskState();
}

class _navitaskState extends State<navitask> {
  final a = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: a,
        child: Column(
          children: [
            SizedBox(height: 300,),
            TextFormField(
              validator: (value){
                if(value==null || value.isEmpty)
                  return("please enter valid name");

              },
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Enter Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40,),
            TextFormField(
              validator: (value){
                if(value==null || value.isEmpty)
                  return("please enter correct password");

              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){

              if(a.currentState!.validate())

                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                }

            }, child: Text("login"))
          ],
        ),
      ),
    );
  }
}
