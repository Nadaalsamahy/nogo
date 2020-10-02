import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nogo/RigesterScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                  hintText: 'البريد الإلكتروني',contentPadding: const EdgeInsets.fromLTRB(20,5.0,20,0),
                  enabledBorder: outlineInputBorder(),
                  focusedBorder:outlineInputBorder() ,

//                    suffixIcon: Icon(Icons.person,color: Colors.blueAccent,),
                ),
                style: TextStyle(fontSize: 12),
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
                    hintText: 'كلمة المرور ',contentPadding: const EdgeInsets.fromLTRB(10,15,10,0),
                  enabledBorder: outlineInputBorder(),
                  focusedBorder:outlineInputBorder() ,
                  prefixIcon: Icon(Icons.remove_red_eye,color: Colors.blueAccent,size: 20,),
                ),
                style: TextStyle(fontSize: 12),
              ),
            ),),

//              SizedBox(height: 3,),
        GestureDetector(

          child:     Text("نسيت كلمة المرور ؟",
          style: TextStyle(fontSize: 12,color: Colors.orange),
        ),),
          GestureDetector(

            child: Text("لا يوجد حساب؟ انشئ واحد الآن  ",
              style: TextStyle(fontSize: 12,color: Colors.blueGrey),
            ),
            onTap: (){
            
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));

            },

),
          SizedBox(height:  MediaQuery.of(context).size.width * 0.2,),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.08,

            child:
            RaisedButton(
              shape: loginOutlineInputBorder(),

              child: Text("تسجيل الدخول "
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
