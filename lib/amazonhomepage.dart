import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontpage/productpage.dart';

class mydemo extends StatefulWidget {
  const mydemo({super.key});

  @override
  State<mydemo> createState() => _mydemoState();
}

class _mydemoState extends State<mydemo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 70,
        backgroundColor: Colors.greenAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon((Icons.keyboard_voice_rounded)),
          )],
        title: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Container(
                width: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.camera_alt_outlined),
                      ),
                    ],
                  )),
              hintText: 'search Amazon.in',

            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Deliver to Mohammed "),
              trailing: Icon(Icons.arrow_drop_down_sharp),
              tileColor: Color(0xffb7edd5),

            ),
            SizedBox(height: 5,),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext a,b)
                {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Container(
                          height: 50,
                          width: 59,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           image: DecorationImage(
                             image: AssetImage("image/watch.jpg")
                           )
                         ), 
                        ),
                       Text("watches")
                     ],
                   ),
                 );
                },
              ),
            ),
            SizedBox(height: 5,),
            CarouselSlider.builder (
                options: CarouselOptions(
                  height: 230,
                  aspectRatio: 16/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  //  onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 2,
                itemBuilder: (BuildContext context, a, b)
                {
                  return Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/boult.jpeg"),
                        fit: BoxFit.fill
                      )
                    ),
                  );
                }
            ),
            DotsIndicator(
                dotsCount: 5,
              decorator: DotsDecorator(
                color: Colors.grey
              ),


            ),
            SizedBox(height: 5,),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext a,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("image/watch.jpg"),
                            ),
                          ),
                        ),
                        Text("Watch")
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Deals for you on top brands",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 8,),
            GestureDetector(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => demo2()),
                );

              },
              child: Container(
                height: 400,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: ScrollController(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // number of items in each row
                      mainAxisSpacing: 5, // spacing between rows
                      crossAxisSpacing: 5, // spacing between columns
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext a,b)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("image/boult.jpeg"),
                                )
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 50,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(0xffe3304b),
                                    ),
                                    child: Text("25%off",style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                Text("Limited time deal",style: TextStyle(color:Color(0xffe3304b) ),)
                              ],
                            )
                          ],
                        ),
                      );

                    }

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("See all deals",style: TextStyle(color: Colors.blueAccent),),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
