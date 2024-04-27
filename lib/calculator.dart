import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {

  final TextEditingController noufal = TextEditingController();


  final TextEditingController noufal1 = TextEditingController();
  final TextEditingController noufal2 = TextEditingController();


  final TextEditingController height1 = TextEditingController();
  final TextEditingController weight1 = TextEditingController();




  double hinm=0;
  double h2=0;
  double BMI=0;



  double gstamount=0;
  double totalamount=0;
  double inclusivegst=0;
  double inclusiveamt=0;





  String num1="";
  String num2="";
  String optr="";
  bool clk=false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [Icon((Icons.more_vert))],
          ),


          body: Column(
            children: [
              TabBar(
                  tabs:[
                    Tab(text: "calculator"),
                    Tab(text: "GST calculator"),
                    Tab(text: "BMI calculator"),
                  ]
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: ListView(
                          children: [
                            SizedBox(height: 150,),

                            Center(
                                child: Container(
                                  width: 350,
                                  child: TextFormField(
                                    textAlign: TextAlign.right,
                                    controller: noufal,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),


                                  ),
                                )
                            ),


                            SizedBox(height: 40,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="";
                                  num1="";
                                  num2="";
                                  clk=false;

                                },
                                    child: Text("AC",style: TextStyle(fontSize: 30,color: Colors.deepOrange),)),
                                ElevatedButton(onPressed: ()
                                {
                                  String a= noufal.text;
                                  num1=a.substring(0,a.length-1);
                                  noufal.text=num1;
                                },
                                  child: Text("←",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="%";
                                  optr="%";
                                  clk=true;
                                },
                                  child: Text("mod",style: TextStyle(fontSize: 28,color: Colors.deepOrange)),),
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="/";
                                  optr="/";
                                  clk=true;
                                },
                                  child: Text("÷",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                              ],
                            ),

                            SizedBox(height: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="7";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="7";
                                    noufal.text=num1;
                                  }
                                }
                                    , child: Text("7",style: TextStyle(fontSize: 30,color: Colors.black),)),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="8";
                                    noufal.text=num2;

                                  }
                                  else{
                                    num1+="8";
                                    noufal.text=num1;
                                  }
                                }
                                  , child: Text("8",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="9";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="9";
                                    noufal.text=num1;
                                  }
                                }
                                  , child: Text("9",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="*";
                                  optr="*";
                                  clk=true;

                                },
                                  child: Text("×",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                              ],
                            ),

                            SizedBox(height: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="4";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="4";
                                    noufal.text=num1;
                                  }
                                },
                                    child: Text("4",style: TextStyle(fontSize: 30,color: Colors.black),)),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="5";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="5";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text("5",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="6";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="6";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text("6",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="-";
                                  optr="-";
                                  clk=true;
                                },
                                  child: Text("-",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                              ],
                            ),

                            SizedBox(height: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="1";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="1";
                                    noufal.text=num1;
                                  }
                                },
                                    child: Text("1",style: TextStyle(fontSize: 30,color: Colors.black),)),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="2";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="2";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text("2",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="3";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="3";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text("3",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {

                                  noufal.text="+";
                                  optr="+";
                                  clk=true;

                                },
                                  child: Text("+",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                              ],
                            ),

                            SizedBox(height: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="00";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="00";
                                    noufal.text=num1;
                                  }
                                },
                                    child: Text("00",style: TextStyle(fontSize: 30,color: Colors.black),)),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+="0";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+="0";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text("0",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  if(clk){
                                    num2+=".";
                                    noufal.text=num2;
                                  }
                                  else{
                                    num1+=".";
                                    noufal.text=num1;
                                  }
                                },
                                  child: Text(".",style: TextStyle(fontSize: 30,color: Colors.black)),),
                                ElevatedButton(onPressed: ()
                                {
                                  if(optr=="+"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    double c=a+b;
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="-"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    double c=a-b;
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="*"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    double c=a*b;
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="/"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    double c=(a/b) as double;
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="%"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    double c=a%b;
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="√"){
                                    double a=double.parse(num1);
                                    num c= pow(a,1/2);
                                    noufal.text = c.toString();
                                  }
                                  if(optr=="%"){
                                    double a=double.parse(num1);
                                    double b=double.parse(num2);
                                    num c= (b/a)*100;
                                    noufal.text = c.toString();
                                  }
                                },
                                  child: Text("=",style: TextStyle(fontSize: 30,color: Colors.deepOrange)),),
                              ],
                            ),

                            SizedBox(height: 40,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="√";
                                  optr="√";
                                  clk=true;
                                },
                                    child: Text("√",style: TextStyle(fontSize: 30,color: Colors.black),)),

                                ElevatedButton(onPressed: ()
                                {
                                  noufal.text="%";
                                  optr="%";
                                  clk=true;
                                },
                                    child: Text("%",style: TextStyle(fontSize: 30,color: Colors.black),)),

                              ],
                            ),
                          ]
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 230,),

                        Container(
                          width: 250,
                          child: TextFormField(
                            controller: noufal1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Amount",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 250,
                          child: TextFormField(
                            controller: noufal2,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "GST percentage %",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: ()
                        {
                          double a1=double.tryParse(noufal1.text)??0;
                          double b1=double.tryParse(noufal2.text)??0;
                          setState(() {
                            gstamount=(a1*b1)/100;
                            totalamount=a1+gstamount;
                            inclusivegst=a1-(a1*(100/(100+b1)));
                            inclusiveamt=a1-inclusivegst;

                            showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    AlertDialog(
                                      title: Center(
                                        child: Text(
                                          'GST Results',
                                          style: TextStyle(color: Colors.green),),
                                      ),

                                      content: Container(
                                        height: 180,
                                        child: Column(
                                          children: [
                                            Text("Inclusive GST",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                                            Text("GST Amount : $inclusivegst"),
                                            Text("Without GST : $inclusiveamt"),
                                            SizedBox(height: 30,),
                                            Text("Exclusive GST : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                            Text("GST Amount : $gstamount"),
                                            Text("Total Amount (With GST) : $totalamount"),


                                          ],
                                        ),

                                      ),
                                      actions: [
                                        TextButton(
                                            child: const Text("cancel"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }

                                        )
                                      ],
                                      elevation: 5,

                                    )
                            );


                          }
                          );
                        },
                          child: Text("calculate",style: TextStyle(fontSize: 15)),

                        ),

                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 230,),
                        Container(
                          width: 250,
                          child: TextFormField(
                            controller: height1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Height (in cm)",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 250,
                          child: TextFormField(
                            controller: weight1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText:  "Weight (in kg)",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: ()
                        {
                          setState(() {
                            double h1=double.tryParse(height1.text)??0;
                            double w1=double.tryParse(weight1.text)??0;

                            hinm = h1/100;
                            h2 = hinm*hinm;
                            BMI = w1/h2;


                            if (BMI<18.5) {


                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext) {
                                    return Container(
                                      height: 250,
                                      width: double.infinity,
                                      color: Colors.yellowAccent,
                                      child: Center(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 50,),
                                              Text("RESULTS : $BMI", style:
                                              TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                              SizedBox(height: 50,),
                                              Text("Under Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                            ],
                                          )),
                                    );
                                  }
                              );


                            }

                            else if (BMI >= 18.5 && BMI < 25)
                            {

                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext) {
                                    return Container(
                                      height: 250,
                                      width: double.infinity,
                                      color: Colors.green,
                                      child: Center(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 50,),
                                              Text("RESULTS : $BMI", style:
                                              TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                              SizedBox(height: 50,),
                                              Text("Normal Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)                                               ],
                                          )),
                                    );
                                  }
                              );

                            }

                            else if (BMI >= 25)

                            {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext) {
                                    return Container(
                                      height: 250,
                                      width: double.infinity,
                                      color: Colors.redAccent,
                                      child: Center(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 50,),
                                              Text("RESULTS : $BMI", style:
                                              TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),),
                                              SizedBox(height: 50,),
                                              Text("Over Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)                                               ],
                                          )),
                                    );
                                  }
                              );
                            }







                          });

                        },
                            child: Text("Calculate",style: TextStyle

                              (fontWeight: FontWeight.bold),)),



                      ],
                    ),

                  ],

                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
