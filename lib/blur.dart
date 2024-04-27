import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bluringg extends StatelessWidget {
  const bluringg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container
        (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/dq.jpg"),
                fit: BoxFit.fill
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 30,),
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                            Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/bg.jpg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(30)
                            ),
                                                   ),

                      SizedBox(height: 20,),
                      Container(
                        child:Center(
                          child: (
                          Text("NOUFAL")
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("image/bg.jpg"),
                              fit: BoxFit.fill,
                            ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Center(child: Text("NOUFAL")),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20.0,sigmaY: 20.0),
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        //color: Colors.lightGreenAccent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/log.jpeg")
                              ),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(40)
                            ),
                          ),
                          SizedBox(height: 80,),
                          Container(
                            width: 280,
                              child:TextFormField(
                                decoration: InputDecoration(
                                    icon: Icon(Icons.person),
                                    hintText: 'Enter Name',
                                    border: OutlineInputBorder()
                                ),
                              ),
                          ),
                          SizedBox(height: 20,),
                          //ElevatedButton(onPressed: (){}, child: Text("login"))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 10,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/bg.jpg")
                )
              ),
            )
          ],
        ),
      ),

    );
  }
}
