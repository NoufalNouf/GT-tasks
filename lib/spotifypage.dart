import 'package:flutter/material.dart';

import 'color.dart';

class spotify1 extends StatefulWidget {
  const spotify1({super.key});

  @override
  State<spotify1> createState() => _spotify1State();
}

class _spotify1State extends State<spotify1> {
  get imageSize => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_sharp),
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Romantic Mix',style: TextStyle(color: Colors.black),),
            ),
          ),
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50,
                        width: 270,

                        child: TextFormField(

                          decoration: InputDecoration(
                            fillColor: Colors.black12,
                           filled: true,

                           prefixIcon: Icon(Icons.search),
                            hintText: 'search songs',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50,
                        width: 80,
                        child: Center(child: Text("sort")),
                        decoration: BoxDecoration(

                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10,top: 40),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 80,
                                    spreadRadius: 10)
                              ]),
                          child: Image(
                            image: AssetImage("image/yuvan.jpeg"),
                            width: imageSize,
                            height: imageSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Yuvan Shankar Raja,D.Imman,Hiphop Tamizh and more",style: TextStyle(color: Colors.green),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('image/yuvan.jpeg'),
                                    width: 35,
                                    height: 35,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Made For Noufal',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '1786 saves . 4h 6m',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined,size: 25.5, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Icon(Icons.arrow_circle_down,size: 25, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Icon(Icons.more_vert,size: 25, color: Colors.white,),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.shuffle,size: 25, color: Colors.green,),
                                  ),
                                  Icon(Icons.play_circle,size: 50, color: Colors.green,),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                child: ListTile(
                  leading: Image.asset("image/dq.jpg"),
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: Text('Kadhal vaithu',style: TextStyle(color: Colors.white),),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 40,
                            child: Center(
                                child: Text(
                              "Lyrics",
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            )),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Yuvan Shankar Raja,Vijay Yesudas",
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
            childCount: 20, // Adjust as needed
          ),
        ),
      ],
    ));
  }
}
