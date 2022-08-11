import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telenor_portal/pages/login.dart';
import 'package:telenor_portal/pages/student_welcom_screen.dart';
import 'package:telenor_portal/pages/teacher_Screen.dart';
class splash extends StatefulWidget {
  splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> { 
  @override

  ///////////////////////////////////////create init function wichwill direct u to screen
  void initState() {
    // TODO: implement initState
    super.initState();
    islogin();
  }

/////////////////////create a function which check login or not login
void islogin()  async{  //<= here use async function

SharedPreferences sp=await SharedPreferences.getInstance();//<=now create sp object

bool islogin=sp.getBool('islogin') ?? false;   //no check user is in/out
String usertype=sp.getString('usertype')?? '';  //here we check user type and give scrren acording that





if(islogin){//if islogin is true then go to student/teacher screen

if(usertype=='employe'){
Timer(Duration(seconds:3),(){
Navigator.push(context, MaterialPageRoute(builder: (context)=>student_screen()));


  });

}// employe if end
  else if(usertype=='Ceo'){
Timer(Duration(seconds:3),(){
Navigator.push(context, MaterialPageRoute(builder: (context)=>teacher_screen()));


  });



  }

else{//else islogin is not true then got login screen
Timer(Duration(seconds:3),(){
Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));


  });


  
}


}else{//else islogin is not true then got login screen
Timer(Duration(seconds:3),(){
Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));


  });


  
}


}//vois islogin function end



  ////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Image(height: 180,width: 180,   image: AssetImage('images/op.png')),

Text("Wood peak",style: TextStyle(fontFamily: 'a1'),)



  ],)),


    );
  }
}