import 'package:flutter/material.dart';

class validtask extends StatefulWidget {
  const validtask({super.key});

  @override
  State<validtask> createState() => _validtaskState();
}

class _validtaskState extends State<validtask> {

  final a= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: a,
        child: Column(
          children: [
            TextFormField(validator: (value)
            {
              if(value == null || value.isEmpty )
              {
                return "please enter valid name";
              }
            },
              decoration: InputDecoration(
                hintText: 'Enter Name  '
              ),
            ),
            TextFormField(validator: (value)
            {
              if(value == null || value.isEmpty )
              {
                return "please enter valid Email ID";
              }
            },
              decoration: InputDecoration(
                  hintText: 'Enter Email '
              ),
            ),
            TextFormField(validator: (value)
            {
              RegExp regex =
              RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
              if (!regex.hasMatch(value!)) {
                return 'Enter valid password';
              }


            },
              decoration: InputDecoration(
                  hintText: 'Enter Password  '
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                if(a.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                }
              }, child: Text("Login")),
            )


          ],
        ),
      )

      ,
    );
  }
}
