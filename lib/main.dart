

import 'dart:math';

import 'package:flutter/material.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
title: "Dice App",
home: HomePage(),
    );
    
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


  @override
class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
AssetImage two = AssetImage("images/two.png");
AssetImage three = AssetImage("images/three.png");
AssetImage four = AssetImage("images/four.png");
AssetImage five = AssetImage("images/five.png");
AssetImage six = AssetImage("images/six.png");

AssetImage leftdice;
AssetImage rightdice;


  @override

void initState(){
super.initState();
leftdice = one;
rightdice = two;
}
  



void rollthedice (){
var randoml = (1 +Random().nextInt(6));
var randomr = (1 +Random().nextInt(6));


AssetImage newdicel;
AssetImage newdicer;


switch (randoml)   {
  case 1:
    newdicel = one;
    break;
      case 2:
    newdicel = two;
    break;
      case 3:
    newdicel = three;
    break;
      case 4:
    newdicel = four;
    break;
      case 5:
    newdicel = five;
    break;
      case 6:
    newdicel = six;
    break;


}


switch (randomr)   {
  case 1:
    newdicer = one;
    break;
          case 4:
    newdicer = four;
    break;
      case 5:
    newdicer = five;
    break;
      case 2:
    newdicer = two;
    break;
      case 3:
    newdicer = three;
    break;

      case 6:
    newdicer = six;
    break;


}

setState(() {
  
  leftdice = newdicel;
  rightdice = newdicer;
});
}






  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(   
        backgroundColor: Colors.black,     
hoverColor: Colors.black,        
 child: Icon(Icons.radio_button_checked),
 onPressed: rollthedice,
  foregroundColor: Colors.yellowAccent,
      ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
appBar: AppBar(
  title: Text("Dice App"),
  centerTitle:true,
  backgroundColor: Colors.black,
),

body: Container(
  child: Center(
    
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
       Image(
         width: 150.0,
         height: 150.0,
         image: leftdice,
       ),
              Image(
         width: 150.0,
         height: 150.0,
         image: rightdice,
       ),
     ],
   ),
  ),
),

    );
  }
}