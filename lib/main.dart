import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nogo/loginScreen.dart';
//manar elsebaay
import 'RigesterScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: ThemeData(fontFamily: "Cairo"),      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.5), BlendMode.dstATop),
                    image: AssetImage("images/newbackground.jpg"),
                    fit: BoxFit.cover,
                  ),
//            gradient: LinearGradient(colors: [ Color(0xFF0D47A1), Color(0xFFB2EBF2 )],
//            begin: FractionalOffset.topLeft,
//              end:FractionalOffset.bottomRight,
//              stops: [0.0,1.0],
//              tileMode: TileMode.clamp,
//            )
                ),
              ),
              Positioned(top: 130,
                left: 130,
                right: 130,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
//                      TextSpan(
//                        text: 'مرحبًا بك ',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//
//                          fontSize: 40,
//                          color: Colors.indigo,
//                        ),
//                      ),
//                      TextSpan(
//                        text: ' إن جو',
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 20,
//                            color: Colors.orange),
//                      ),
                    ],
                  ),
                ),
              ),
             Positioned(
               bottom: 180,
               top: 180,
               child:
               Image.asset(
                  "images/logo.png",

//
                ),

              ),
              Positioned(
                bottom: 160,
                left: 50,
                right: 50,
                child:
              Column(children: <Widget>[
                Text(

                  '''مرحبًا بك  '''''
                  , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15,),
                Text(


                  '''يمكنك الآن البدء بالتصفح والبحث عن العروض المناسبة أو قم بالتسجيل معنا وإضافة العروض الخاصة بفندقك  ''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,

                ),
              ],),)


//              Column(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.all(20),
//                    child:Container(
//                      height: 150,
//                      child: Card(
//                      color: Colors.white.withOpacity(0.7),
//                      shape: OutlineInputBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                        borderSide: BorderSide(color: Colors.lightBlueAccent),
//                      ),
////
////                      child: Column(children: <Widget>[
////                        Text(
////
////                          '''مرحبا بك في إن جو '''''
////                          , style: TextStyle(
////                            fontWeight: FontWeight.bold,
////                            fontSize: 18,
////                            color: Colors.blueAccent),
////                          textAlign: TextAlign.center,
////                        ),
////                        Text(
////
////
////                          '''يمكنك الآن البدء بالتصفح والبحث عن العروض المناسبة أو قم بالتسجيل معنا وإضافة العروض الخاصة بفندقك  ''',
////                          style: TextStyle(
////                              fontWeight: FontWeight.bold,
////                              fontSize: 18,
////                              color: Colors.blueAccent),
////                          textAlign: TextAlign.center,
////                        ),
////                      ],),
//
//                    ),)
//          )
//
//
////    )
//                ],
//              ),
            ,Positioned(
                bottom: 50,
                left: 50,
                right: 50,
                child:       Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
//                ),
                  ButtonTheme(
                    minWidth: MediaQuery
                        .of(context)
                        .size
                        .width * 0.04,
//                  height: MediaQuery.of(context).size.height * 0.10,
                    child: RaisedButton(
                        onPressed: () {},
                        shape: shapeButton(),
                        child: Text(
                          'تصفح العروض',
                          style: TextStyle(fontSize: 15),
                          textDirection: TextDirection.rtl,
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white),
                  ),
                  ButtonTheme(
                      minWidth: MediaQuery
                          .of(context)
                          .size
                          .width * 0.07,
//    height: MediaQuery.of(context).size.height * 0.10,
                      child: RaisedButton(
                        onPressed: () {

                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        shape: shapeButton(),
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(fontSize: 15),
                          textDirection: TextDirection.rtl,
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                      ))
                ],
              ), ),


          ]),
        ));
  }

  RoundedRectangleBorder shapeButton() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(13.0),
//   side: BorderSide(color: Colors.white),
    );
  }
}
