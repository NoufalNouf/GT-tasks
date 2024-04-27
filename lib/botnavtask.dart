import 'package:flutter/material.dart';

class botnavtask1 extends StatefulWidget {
  const botnavtask1({super.key});

  @override
  State<botnavtask1> createState() => _botnavtask1State();
}

class _botnavtask1State extends State<botnavtask1> {
  int _index = 0;

  final pages = [
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(child: Column(
        children: [
          SizedBox(height: 300,),
          TextFormField(decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'ENTER NAME',
            border: OutlineInputBorder()
          ),
          ),
          SizedBox(height: 30,),
          TextFormField(decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'PASSWOIRS',
              border: OutlineInputBorder()
          ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){}, child: Text("login"))
        ],
      ),),
    ),
    Center(child: TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.search),
        hintText: 'search here',
        border: OutlineInputBorder()
      ),
    )),
    Center(child:
    Container(
      height: 200,width: 200,
      child: Image.asset("image/dq.jpg"),
    )    
    ),
    Center(child: AppBar(
      leading: Icon(Icons.menu),
      title: Center(child: Text("Pofile Page")),
    ),
    ),
    TextFormField(decoration: InputDecoration(
    icon: Icon(Icons.person),
  hintText: 'ENTER NAME',
  border: OutlineInputBorder()
  )),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
