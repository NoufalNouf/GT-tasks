import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class demo2 extends StatefulWidget {
  const demo2({super.key});

  @override
  State<demo2> createState() => _demo2State();
}

class _demo2State extends State<demo2> {



  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("   1"),value: "1"),
      DropdownMenuItem(child: Text("   2"),value: "2"),
      DropdownMenuItem(child: Text("   3"),value: "3"),
      DropdownMenuItem(child: Text("   4"),value: "4"),
    ];
    return menuItems;
  }
  String selectedValue = "1";
  
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
            Container(
              height: 40,
              width: 400,
              child: Row(
                children: [
                  Text("B O U L T"),
                  SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Boult Audio Z20 Truly Wireless...")),
                      Text("999.00 54,000 prime")
                    ],
                  ),
                  SizedBox(width: 65,),
                  Image(image: AssetImage("image/login.png"),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  child: CarouselSlider.builder (
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
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
                ),
                Positioned(
                    top:15,
                    left:15,
                    child:Container(
                      height: 40,
                      width: 40,
                      child: Column(
                        children: [
                          Center(child: Text("69%",style: TextStyle(color: Colors.white,fontSize: 10),)),
                          Center(child: Text("off",style: TextStyle(color: Colors.white,fontSize: 10)))
                        ],
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe3304b)
                      ),
                    ),
                ),
                Positioned(
                  top: 15,
                    right: 30,
                    child: Icon(Icons.share)
                ),
                Positioned(
                  height: 25,
                    width: 25,
                    bottom: 15,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("image/like.png")
                        )
                      ),
                    )
                )
              ],
            ),
            DotsIndicator(
              dotsCount: 5,
              decorator: DotsDecorator(
                  color: Colors.grey
              ),


            ),
            Text("2K+ bought in past month"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("visit the boAt store",style: TextStyle(color:Color(0xff34baab) ),),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Text("3.8"),                ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 15,
          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,),
          onRatingUpdate: (rating) {
            print(rating);
            // Do something with the updated rating
          },
        ),

                Text("7,407",style: TextStyle(color:Color(0xff34baab) ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("boAt immortal 121 TWS Earbuds with beast mode (40 ms Low latency) for gaming,40H playtime, Blazing LEDs, Quad Mics ENx Signature sound, ASAP Charge(10 Mins = 180 Mins)(Black Sabre)"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5,),
                Container(
                  height: 50,width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("image/best seller.png")
                    )
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("in PC Game Headsets",style: TextStyle(color:Color(0xff34baab) ),)
              ],
            ),
            Container(
              height: 40,width: 120,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(Icons.keyboard_return),
            ),
            TextFormField(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Container(
                height: 40,width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("image/limited.png")
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: RichText(
                text: TextSpan(
                  text: '-63%',style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.w100),
                  children:[
                    WidgetSpan(child: SizedBox(width: 20,)),
                    TextSpan(text: '1,299', style: TextStyle(color: Colors.black,fontSize: 60,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("M.R.P.: ₹3,499"),
            ),
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: RichText(
                text: TextSpan(
                  text: 'EMI starts at ₹118.',style: TextStyle(color: Colors.black,fontSize: 15),
                  children:[
                    TextSpan(text: 'EMI options', style: TextStyle(color: Color(0xff34baab),fontSize: 15)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 257),
              child: Text("Inclusive of all taxes",style: TextStyle(color: Colors.black,fontSize: 15),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: RichText(
                text: TextSpan(
                  text: 'Get 50 cashback: ',style: TextStyle(color: Color(0xff34baab)),
                  children:[
                    TextSpan(text: 'Pay only', style: TextStyle(color: Color(0xff34baab),fontWeight: FontWeight.bold,fontSize: 15)),
                    TextSpan(text: '₹1,299.00 ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    TextSpan(text: '₹1,249.00\n',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'for this order with Amazon Pay Later.', style: TextStyle(color: Color(0xff34baab),fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Active \nnow.',style: TextStyle(color: Color(0xff34baab)))
                  ],
                ),
              ),
            ),
            TextFormField(),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Total: ₹1,299",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: RichText(
                text: TextSpan(text: 'Free delivery FRIDAY . Details',style: TextStyle(color:Color(0xff34baab) )),






              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text("Or faster delivery Tomorrow,21 March. Order"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 215),
              child: Text("within 9 hrs 48 mins. Details"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text("Deliver to Mohammed"),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("In Stock",style: TextStyle(color: Colors.green,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Container(
                height: 35,width: 80,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Text(" Qty:",style: TextStyle(fontSize: 15,color: Colors.black),),
                    DropdownButton(
                        value: selectedValue,
                        style: TextStyle(color: Colors.black,fontSize: 15),
                        onChanged: (String? newValue){
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: dropdownItems
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 370,
              child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.yellowAccent
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 370,
              child: Center(child: Text("Buy",style: TextStyle(fontSize: 20),)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 10,),
                  Text("Secure Transaction",style: TextStyle(color:Color(0xff34baab) ),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(("Gift-wrap available.")),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text("Add to wish list",style: TextStyle(color:Color(0xff34baab) ),),
            ),



          ],
        ),
      ),
    );
  }
}
