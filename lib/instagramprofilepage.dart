import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("n.o.u.f.a.l_07_"),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon((Icons.add_box_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon((Icons.menu)),
                  )
                ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                toolbarHeight: 500,
                title:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              height: 100,width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("image/vijay.jpeg"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text("96",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("posts",style: TextStyle(fontSize: 15)),
                              ]
                          ),
                          Column(children: [
                            Text("1,203",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            Text("followers",style: TextStyle(fontSize: 15))
                          ]),
                          Column(
                            children: [
                              Text("539",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("following",style: TextStyle(fontSize: 15)),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Artist",style: TextStyle(color: Colors.blueGrey,fontSize: 15),),
                    ),
                    Row(
                      children: [
                        Text("Cricketer",style: TextStyle(fontSize: 15),),
                        Icon(Icons.sports_cricket,color: Colors.red,)
                      ],
                    ),
                    Row(
                      children: [
                        Text("|Aspire to inspire,before we expire|",style: TextStyle(fontSize: 15),),
                        Icon(Icons.accessibility,color: Colors.red,)
                      ],
                    ),
                    SizedBox(height: 10,),


                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,width: 180,
                          child: Center(child: Text("Edit profile",style: TextStyle(color: Colors.white,fontSize: 15),)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,width: 180,
                          child: Center(child: Text("Share profile",style: TextStyle(color: Colors.white,fontSize: 15),)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Container(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext a,b)
                          {
                            return  Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage("image/vijay.jpeg")
                                        )
                                    ),
                                  ),
                                ),
                                Text("highlights",style: TextStyle(fontSize: 18),)
                              ],
                            );
                          }
                      ),
                    ),


                    TabBar(
                      tabs: [
                        Icon(Icons.grid_on),
                        Icon(Icons.play_arrow_outlined),
                        Icon(Icons.person_pin_outlined)
                      ],
                    ),





                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [


              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext a,b)
                  {
                    return Container(
                      height: 150,width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/vijayy.jpeg")
                          )
                      ),
                    );



                  }
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext a,b)
                  {
                    return Container(
                      height: 150,width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/vijayy.jpeg")
                          )
                      ),
                    );



                  }
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext a,b)
                  {
                    return Container(
                      height: 150,width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/vijayy.jpeg")
                          )
                      ),
                    );



                  }
              )


            ],
          ),

        )

      ),
    );
  }
}








        // CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       title: Text("n.o.u.f.a.l_07_"),
        //       actions: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Icon((Icons.add_box_outlined)),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Icon((Icons.menu)),
        //         )
        //       ],
        //     ),
        //     SliverToBoxAdapter(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(15.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               children: [
        //                 Container(
        //                   height: 100,width: 100,
        //                   decoration: BoxDecoration(
        //                     shape: BoxShape.circle,
        //                       image: DecorationImage(
        //                           image: AssetImage("image/vijay.jpeg"),
        //                           fit: BoxFit.fill
        //                       )
        //                   ),
        //                 ),
        //           Column(
        //             children: [
        //               Text("96",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        //               Text("posts")
        //             ],
        //           ),
        //           Column(children: [
        //           Text("1,203",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        //           Text("followers")
        //           ]),
        //           Column(
        //             children: [
        //               Text("539",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
        //               Text("following"),
        //
        //             ],
        //           ),
        //           ],
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Text("Artist",style: TextStyle(color: Colors.blueGrey),),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Row(
        //               children: [
        //                 Text("Cricketer"),
        //                 Icon(Icons.sports_cricket,color: Colors.red,)
        //               ],
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Row(
        //               children: [
        //                 Text("|Aspire to inspire,before we expire|"),
        //                 Icon(Icons.accessibility,color: Colors.red,)
        //               ],
        //             ),
        //           ),
        //
        //
        //           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               Container(
        //                 height: 30,width: 190,
        //                 child: Center(child: Text("Edit profile",style: TextStyle(color: Colors.white),)),
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(8),
        //                   color: Colors.grey
        //                 ),
        //               ),
        //               Container(
        //                 height: 30,width: 190,
        //                 child: Center(child: Text("Share profile",style: TextStyle(color: Colors.white),)),
        //                 decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(8),
        //                     color: Colors.grey
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(height: 10,),
        //
        //           Container(
        //             height: 150,
        //             child: ListView.builder(
        //               scrollDirection: Axis.horizontal,
        //               itemCount: 6,
        //                 itemBuilder: (BuildContext a,b)
        //             {
        //             return  Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.all(10.0),
        //                   child: Container(
        //                     height: 70,
        //                     width: 70,
        //                     decoration: BoxDecoration(
        //                       shape: BoxShape.circle,
        //                       image: DecorationImage(
        //                         image: AssetImage("image/vijay.jpeg")
        //                       )
        //                     ),
        //                   ),
        //                 ),
        //                 Text("highlights")
        //               ],
        //             );
        //             }
        //             ),
        //           ),
        //
        //
        //           TabBar(
        //             tabs: [
        //               Tab(text: 'Posts'),
        //               Tab(text: 'About'),
        //             ],
        //           ),
        //           Expanded(
        //             child: TabBarView(children: [
        //               GridView.builder(
        //                   physics: NeverScrollableScrollPhysics(),
        //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                     crossAxisCount: 3,
        //                     mainAxisSpacing: 3,
        //                     crossAxisSpacing: 3,
        //                   ),
        //                   itemBuilder: (BuildContext a,b)
        //                   {
        //                     return Container(
        //                       height: 150,width: 150,
        //                       decoration: BoxDecoration(
        //                           image: DecorationImage(
        //                               image: AssetImage("image/vijayy.jpeg")
        //                           )
        //                       ),
        //                     );
        //
        //
        //
        //                   }
        //               ),
        //             ]),
        //           ),
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //       ],
        //     )
        //    ),
        //
        //
        //   ],
        //   )
