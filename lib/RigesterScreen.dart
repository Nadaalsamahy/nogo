import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Material(
      child: SafeArea(

          child: SingleChildScrollView(child:
          Column(children: <Widget>[
            Stack(children: <Widget>[ topContainer(),Positioned(
//  top: 50,
//  bottom: 50,
              left: 50,
              right: 50,
              child:    Image.asset(
                "images/logo.png",
                height: 200,
                width: 200,

//
              ),)],),




            SizedBox(height: 20,),
            Container(

              height:  65,
              child:
              Padding(
                padding: EdgeInsets.fromLTRB(30,10,30,10),

                child:

                TextField(

                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,

                  decoration: InputDecoration(
                    hintText: 'اسم المستخدم',contentPadding: const EdgeInsets.fromLTRB(20,5.0,20,0),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder:outlineInputBorder() ,

//                    suffixIcon: Icon(Icons.person,color: Colors.blueAccent,),
                  ),
                  style: TextStyle(fontSize: width*0.04),
                ),
              ),
            ),
            Container(height: 65,              width:  MediaQuery.of(context).size.width*1,

              child:
              Padding(
                padding: EdgeInsets.fromLTRB(30,10,30,10),

                child:

                TextField(


                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,

                  decoration: InputDecoration(
                    hintText: 'البريد الإلكتروني',
                    contentPadding: const EdgeInsets.fromLTRB(20,5.0,20,0),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder:outlineInputBorder() ,

//                    suffixIcon: Icon(Icons.person,color: Colors.blueAccent,),
                  ),
                  style: TextStyle(fontSize: width*0.04),
                ),
              ),
            ),    Container(
              height:  65,
              child:    Padding(
                padding: EdgeInsets.fromLTRB(30,10,30,10),
                child: TextField(
//                  contentPadding: const EdgeInsets.all(20.0),
                  textAlign: TextAlign.right,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور ',contentPadding: const EdgeInsets.fromLTRB(10,15,10,0),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder:outlineInputBorder() ,
                    prefixIcon: Icon(Icons.remove_red_eye,color: Colors.blueAccent,size: 20,),
                  ),
                  style: TextStyle(fontSize: width*0.04),
                ),
              ),

            ),
            Container(

              height:  65,
              child:
              Padding(
                padding: EdgeInsets.fromLTRB(30,10,30,10),

                child:

              TextField(

  textAlign: TextAlign.right,
  textDirection: TextDirection.ltr,

  decoration: InputDecoration(
    hintText: 'تأكيد كلمة المرور',contentPadding: const EdgeInsets.fromLTRB(10,15,10,0),
    enabledBorder: outlineInputBorder(),
    focusedBorder:outlineInputBorder() ,

    prefixIcon: Icon(Icons.remove_red_eye,color: Colors.blueAccent,size: 20,),
  ),
  style: TextStyle(fontSize: width*0.04),
),

              ),
            ),
            Container(
              height:  65,
              child:    Padding(
                padding: EdgeInsets.fromLTRB(30,10,30,10),
                child: TextField(
//                  contentPadding: const EdgeInsets.all(20.0),
                  textAlign: TextAlign.right,
                  obscureText: true,
                  decoration: InputDecoration(
                 hintText: 'رقم الهاتف  ',contentPadding: const EdgeInsets.fromLTRB(20,5.0,20,0),focusColor: Colors.orange,
                    enabledBorder: outlineInputBorder(),
                    focusedBorder:outlineInputBorder() ,

//                    prefixIcon: Icon(Icons.remove_red_eye,color: Colors.blueAccent,size: 20,),
                  ),
                  style: TextStyle(fontSize: width*0.04),
                ),
              ),

            ),

//              SizedBox(height: 3,),


            SizedBox(height:  MediaQuery.of(context).size.width * 0.2,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.08,

              child:
              RaisedButton(
                shape: loginOutlineInputBorder(),

                child: Text(" تسجيل  "
                  ,style: TextStyle(fontSize: 15,color: Colors.white),
                  textAlign: TextAlign.center,

                ),
                onPressed: (){},
                color: Colors.blueAccent,

              ) ,),



          ] ,)
          )
      ),
    );
  }
  Container topContainer(){
    return     Container(

      height: 200,
//    margin: EdgeInsets.only(top: 200), // getScreenHeight(context)*0.30
      decoration: BoxDecoration(
//    color: Colors.orangeAccent,
        gradient: LinearGradient(colors: [ Color(0xFF0D47A1), Color(0xFFB2EBF2 )],
          begin: FractionalOffset.topLeft,
          end:FractionalOffset.bottomRight,
          stops: [0.0,1.0],
          tileMode: TileMode.clamp,
        ),// white
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(250),
          bottomRight: Radius.circular(250),


        ),
      ),
//child: Image.asset("images/logo.jpeg",),


    );
  }
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      borderSide: BorderSide(color: Colors.blueAccent ,width: 2),
    );
  }
  OutlineInputBorder loginOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      borderSide: BorderSide(color: Colors.blueAccent ,),
    );
  }
}
