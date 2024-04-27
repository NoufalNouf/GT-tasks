import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:frontpage/creatinglist.dart';

class list2 extends StatefulWidget {
  final String name;

  const list2({Key? key, required this.name}) : super(key: key);

  @override
  State<list2> createState() => _list2State();
}

class _list2State extends State<list2> {
  late TextEditingController nou1 = TextEditingController();
  TextEditingController nou2 = TextEditingController();
  late TextEditingController nou3 = TextEditingController();


  @override
  void initstate() {
    super.initState();
    List<String> get = widget.name.split('\n');
    nou1 = TextEditingController(text: get[0]);
    nou2 = TextEditingController(text: get[1]);
    nou3 = TextEditingController(text: get[2]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "${widget.name}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => list()));
            },
            title: Container(
              height: 300,
              width: 350,
              child: Column(
                children: [
                  TextFormField(
                    controller: nou1,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nou2,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: nou3,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              String text1 =
                                  '${nou1.text}\n ${nou2.text}\n ${nou3.text}';
                              Navigator.pop(context, text1);
                            });
                          },
                          child: Text("Edit")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              String text2 = '';
                              Navigator.pop(context, text2);
                            });
                          },
                          child: Text("Delete")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
