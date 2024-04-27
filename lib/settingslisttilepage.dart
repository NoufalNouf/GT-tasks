import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontpage/validationpage.dart';

class nav4 extends StatefulWidget {
  const nav4({super.key});

  @override
  State<nav4> createState() => _nav4State();
}

class _nav4State extends State<nav4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Text("Settings Page"),
        actions: [
          Icon(Icons.account_circle),Icon(Icons.add)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Text("REPORTS"),
          SizedBox(height:40,),
          ListTile(
            tileColor: Colors.greenAccent,
            leading: Icon(Icons.menu),
            title: Text("Report 1"),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 20,),
          ListTile(
            tileColor: Colors.greenAccent,
            leading: Icon(Icons.menu),
            title: Text("Report 2"),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => vali()),
              );

            },
            child: ListTile(
              tileColor: Colors.redAccent,
              leading: Icon(Icons.logout),
              title: Text("log out"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(height: 30,),
          Center(child: Text("Thankyou come again"))


        ],
      ),
    );
  }
}
