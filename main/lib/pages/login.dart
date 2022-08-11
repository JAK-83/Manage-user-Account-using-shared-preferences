import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telenor_portal/componants/buttonn.dart';
import 'package:telenor_portal/componants/textform.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {


 
  @override
  Widget build(BuildContext context) {



 
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 245, 177),
      body: SafeArea(
        child: 
ListView(   // list strt
 // mainAxisAlignment: MainAxisAlignment.center,
  children: [

Column(
          children: [
            //upside text row

            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 50, fontFamily: 'a1'),
                  ),
                ),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 00),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'a1'),
                  ),
                )
              ],  
            ),

            SizedBox(
              height: 10,
            ),

            //down side container
            Container(
              // main container

              height: 551.2,

              width: 500,

              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 247, 245),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),

              child: Column(children: [
                //yellow box 1st column strt
                SizedBox(
                  height: 80,
                ),
                formtext(),
                SizedBox(
                  height: 20,
                ),
                Text("Forgot possword?",style: TextStyle(fontFamily: 'a1')),
                SizedBox(
                  height: 20,
                ),
               
              ]), //yellow box 1st column end
            ), //main container
          ],
        ), //main column








  ],//main list end
),
















      ),
    );
  }
}



















