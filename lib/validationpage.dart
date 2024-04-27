import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontpage/validation.dart';
import 'package:frontpage/bottomnavigation.dart';

class vali extends StatefulWidget {
  const vali({super.key});

  @override
  State<vali> createState() => _valiState();
}

class _valiState extends State<vali> {

  final a=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: a,
        child: Column(
          children: [
            SizedBox(height: 250,),
            Center(
              child: Container(width: 300,
                child: Center(
                  child: TextFormField(

                    validator: (value){
                      if(value==null || value.isEmpty)
                        return("enter valid name");
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter name',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              child: Center(
                child: TextFormField(
                  validator: (value){
                    if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch!(value!))
                      return("Enter valid password");
                  },
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: 'Enter Password',
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
                if(a.currentState!.validate()){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => nav1()),
                   );
                };
                }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
