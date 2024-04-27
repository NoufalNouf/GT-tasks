import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontpage/listcontinue.dart';
import 'package:frontpage/rough.dart';
import 'color.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();

}


class _listState extends State<list> {

  final TextEditingController nouf= TextEditingController();
  final TextEditingController nouf1= TextEditingController();

  List list =[];
  List lis1 =[];
  List lis2 =[];





  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Column(
        children: [
          SizedBox(height: 250,),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: nouf1,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton





            (onPressed: ()
          {
            setState(() {
               list.add(nouf1.text);
              nouf.clear();
            });
          },
              child: Text("Add")),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) =>

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => list2(name: list[index],)));

                      },
                      child: Card(
                        elevation: 9,
                        child:  Container(
                           height: 40,
                           child:Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(list[index],
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                     fontSize: 15),),
                               Container(
                                 width: 80,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     IconButton(onPressed: ()
                                     {
                                       setState(() {
                                         list.removeAt(index);
                                       });
                                     },
                                         icon: Icon(Icons.delete)),
                                     IconButton(onPressed: ()
                                     {
                                       showDialog(
                                           context: context,
                                           builder: (BuildContext context) =>AlertDialog(
                                             title: Text("Edit value"),
                                             content: Container(
                                               height: 150,
                                               child: Column(
                                                 children: [
                                                   TextFormField(
                                                     controller: nouf1,
                                                     decoration: InputDecoration(
                                                         border: OutlineInputBorder()
                                                     ),
                                                     keyboardType: TextInputType.number,
                                                   ),
                                                   SizedBox(height: 50,),
                                                   ElevatedButton(onPressed: ()
                                                   {
                                                     setState(() {
                                                       list[index]=nouf1.text;
                                                       Navigator.of(context).pop();
                                                        nouf1.clear();
                                                    });
                                                   },
                                                       child: Text("Edit")),
                                                 ],
                                               ),
                                             ),
                                           ));
                                     },
                                         icon: Icon(Icons.edit))
                                   ],
                                 ),
                               ),
                             ],
                           )


                           // ListTile(
                           //   title:
                           //   trailing: Container(
                           //     width: 80,
                           //     color: Colors.cyan,
                           //     child: Row(
                           //       mainAxisAlignment: MainAxisAlignment.end,
                           //       children: [
                           //         IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                           //               context: context,
                          //         IconButton(onPressed: ()
                          //         {
                          //           showDialog(
                          //               builder: (BuildContext context) =>AlertDialog(
                           //                 content: Container(
                           //                   height: 150,
                           //                   child: Center(child: Text("The minimum number is : ${list.first}",
                           //                     style: TextStyle(fontSize: 15),)),
                           //
                           //                 ),
                           //
                           //                 actions: [
                           //                   TextButton(onPressed: ()
                           //                   {
                           //                     Navigator.of(context).pop();
                           //                   }, child: Text("ok"))
                           //                 ],
                           //               ));
                           //         },
                           //             icon: Icon(Icons.edit))
                           //       ],
                           //     ),
                           //   ),
                           //   onTap: () {
                           //     Navigator.push(context,
                           //         MaterialPageRoute(builder: (context) =>
                           //             list2(name: list[index],)));
                           //   },
                           // ),

                         ),
                      ),
                    ),
                  )

              ),
            ),
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: ()
              {
                list.sort((a, b) => int.parse(a).compareTo(int.parse(b)));



               showDialog(
                   context: context,
                   builder: (BuildContext context) =>AlertDialog(
                     content: Container(
                       height: 150,
                       child: Center(child: Text("The minimum number is : ${list.first}",
                       style: TextStyle(fontSize: 15),)),
                       
                     ),
                     
                     actions: [
                       TextButton(onPressed: ()
                       {
                       Navigator.of(context).pop();
                       }, child: Text("ok"))
                     ],
                   ));


              },
                  child: Text("Min")),
              ElevatedButton(onPressed: ()
              {

                list.sort((a, b) => int.parse(a).compareTo(int.parse(b)));


                showDialog(
                    context: context,
                    builder: (BuildContext context)
                  {


                      return  AlertDialog(
                      content: Container(
                        height: 150,
                        child: Center(child: Text("The maximum number is : ${list.last}",
                          style: TextStyle(fontSize: 15),)),

                      ),
                      actions: [
                        TextButton(onPressed: ()
                        {
                          Navigator.of(context).pop();
                        }, child: Text("ok"))
                      ],
                    );
              }
                );
              }
                  , child: Text("Max"))
            ],
          ),

          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: ()
              {
                list.sort((a, b) => int.parse(a).compareTo(int.parse(b)));

                showDialog(
                    context: context,
                    builder: (BuildContext context) =>AlertDialog(
                      content: Container(
                        height: 150,
                        child: Center(child: Text("Ascendin order : $list",
                          style: TextStyle(fontSize: 15),)),

                      ),
                      actions: [
                        TextButton(onPressed: ()
                        {
                          Navigator.of(context).pop();
                        }, child: Text("ok"))
                      ],

                    ));
              },
                  child: Text("Ascending")),
              ElevatedButton(onPressed: ()
              {
                list.sort((b, a) => int.parse(a).compareTo(int.parse(b)));

                showDialog(
                    context: context,
                    builder: (BuildContext context) =>AlertDialog(
                      content: Container(
                        height: 150,
                        child: Center(child: Text("Descending order : $list",
                          style: TextStyle(fontSize: 15),)),

                      ),
                      actions: [
                        TextButton(onPressed: ()
                        {
                          Navigator.of(context).pop();
                        }, child: Text("ok"))
                      ],
                    ));
              },
                  child: Text("Descending"))
            ],
          ),

          SizedBox(height: 30,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: ()
              {


                lis1=list.where((element) => int.parse(element)>5).toList();


                showDialog(
                    context: context,
                    builder: (BuildContext context) =>AlertDialog(
                      content: Container(
                        height: 150,
                        child: Center(child: Text("Greater than 5 : $lis1",
                          style: TextStyle(fontSize: 15),)),

                      ),
                      actions: [
                        TextButton(onPressed: ()
                        {
                          Navigator.of(context).pop();
                        }, child: Text("ok"))
                      ],

                    ));
              },
                  child: Text(">5")),
              ElevatedButton(onPressed: ()
              {

                lis2=list.where((element) => int.parse(element)<5).toList();


                showDialog(
                    context: context,
                    builder: (BuildContext context) =>AlertDialog(
                      content: Container(
                        height: 150,
                        child: Center(child: Text("Lesser than 5 : $lis2",
                          style: TextStyle(fontSize: 15),)),

                      ),
                      actions: [
                        TextButton(onPressed: ()
                        {
                          Navigator.of(context).pop();
                        }, child: Text("ok"))
                      ],
                    ));
              },
                  child: Text("<5"))
            ],
          ),
          
          
        ],
      ),

    );
  }
}
