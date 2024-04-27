import 'package:flutter/material.dart';

class newpage extends StatelessWidget {
  const newpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                  border: Border.all(),
                  shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("image/login.png"),
                ),
              ),

          ),
          SizedBox(height: 50,),
          Container(
            height: 400,width: 400,
            decoration: BoxDecoration( color: Colors.lightGreenAccent,border: Border.all()),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Container(
                        decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                        child: Image.asset("image/login.png",height: 150,width: 150,)),

                    Column(
                      children: [
                        Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                                  child: Image.asset("image/login.png",height: 70,width: 80,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                                  child: Image.asset("image/login.png",height: 70,width: 80,)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                                child: Image.asset("image/login.png",height: 70,width: 80,)),
                            SizedBox(width: 20,),
                            Container(
                                decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                                child: Image.asset("image/login.png",height: 70,width: 80,)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                        child: Image.asset("image/login.png",height: 80,width: 80,)),

                    Container(
                        decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                        child: Image.asset("image/login.png",height: 80,width: 80,)),

                    Container
                      (
                        decoration: BoxDecoration( color: Colors.lightBlueAccent,border: Border.all()),
                        child: Image.asset("image/login.png",height: 80,width: 80,)),


                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 50,),
          Container
            (
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("image/login.png",width: 100,),
                ),
                Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "Username",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){}, child: Text("login")),
                  ],
                )

              ],
            ),


          )
        ],

      ),
    );
  }
}

