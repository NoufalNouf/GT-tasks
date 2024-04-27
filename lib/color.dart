import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lemo extends StatefulWidget {
  String name;
  String email;
  String password;
  List nam=[];
  List ema=[];
  List  pass=[];
  Function editname;
  Function editemail;
  Function editpassword;

  lemo({Key? key, required this.name, required this.email, required this.password,required this.editname,required this.editemail,required this.editpassword}):super(key: key);

  State<lemo> createState() => _lemoState();
}

class _lemoState extends State<lemo> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Row(
          children: [
            Column(
              children: [
                Text(
                  'NUMBER : ${widget.name}',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),
                ),
                Text(
                  'Email : ${widget.email}',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),
                ),
                Text(
                  'password : ${widget.password}',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: 80,
              child: Column(
                children: [
                  IconButton(onPressed: (){
                    showDialog(context: context, builder: (BuildContext context){
                      TextEditingController name=TextEditingController(text: widget.name);
                      TextEditingController email=TextEditingController(text: widget.email);
                      TextEditingController password=TextEditingController(text:widget.password);
                      return AlertDialog(
                        title: Text('values'),
                        content: Column(
                          children: [
                            TextField(
                              controller: name,
                              decoration: InputDecoration(labelText: 'New Value'),
                            ),
                            TextField(
                              controller: email,
                              decoration: InputDecoration(labelText: 'New Value'),
                            ),
                            TextField(
                              controller: password,
                              decoration: InputDecoration(labelText: 'New Value'),
                            ),
                          ],
                        ),

                        actions: [
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, child: Text('cancel')),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              widget.name = name.text;
                              widget.email = email.text;
                              widget.password = password.text;
                              widget.editname(name.text);
                              widget.editemail(email.text);
                              widget.editpassword(password.text);

                            });
                            Navigator.of(context).pop();
                          }, child: Text('save')),
                        ],
                      );
                    });
                  }, icon: Icon(Icons.edit)),
                ],
              ),
            )
          ]
      ),
    );
  }
}