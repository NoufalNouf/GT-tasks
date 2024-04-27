import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 400,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 20, // spacing between rows
                    crossAxisSpacing: 20, // spacing between columns
                  ),
                  itemCount: 5,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.cyan,
                        child: Text("ok"),
                      ),
                    );

                  }

              ),
            ),


            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,

                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.cyan,
                        child: Text("ok"),
                      ),
                    );

              }
              ),
            ),

            CarouselSlider.builder(
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
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
              itemCount: 15,
              itemBuilder: (BuildContext context, a, b)
              {
               return Container(
                  height: 100,
                  width: 300,
                  color: Colors.cyan,
                  child: Text("ok"),
                );
              }
            ),


          ],
        ),
      ),
    );
  }
}

class dataModel
{
  String? image;
  String? header;
  String? Desp;

  dataModel(this.image,this.header,this.Desp);
}


List lis = data.map((e) => dataModel(e["image"], e["text"], e["Desp"])).toList();

var data=[
  {"image":"assets/abc.png","text":"hello","Desp":"cjhalfjbwekjf"},
{"image":"assets/abc.png","text":"hello2","Desp":"cjhalfjbvsdvwekjf"},
{"image":"assets/abc.png","text":"hello","Desp":"cjhalfjbwekjf"},
{"image":"assets/abc.png","text":"hello","Desp":"cjhalfjbwekjf"},
{"image":"assets/abc.png","text":"hello","Desp":"cjhalfjbwekjf"},
{"image":"assets/abc.png","text":"hello","Desp":"cjhalfjbwekjf"},
];