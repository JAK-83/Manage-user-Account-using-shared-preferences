//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telenor_portal/componants/buttonn.dart';
import 'package:telenor_portal/pages/login.dart';
class student_screen extends StatefulWidget {
  student_screen({Key? key}) : super(key: key);

  @override
  State<student_screen> createState() => _student_screenState();
}


class _student_screenState extends State<student_screen> {

/////////////////////////////////////////////////////////////////////
String email='';//it will get data from sp and display
String usertype='';

@override
  void initState() {    //<=we created this bc/ of sp (sharedprefecne function)
    // TODO: implement initState
    super.initState();
    load_data();
  }
  void load_data()async{
SharedPreferences sp=await SharedPreferences.getInstance();
email=sp.getString('email') ?? ""; //now assig value to veriables we ?? b/c if spget is empty then it will be empty
usertype=sp.getString('usertype')?? '';
setState(() {//it will load the data
  
});

  }
////////////////////////////////////////////////////////////
///
///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Home"),
automaticallyImplyLeading: false,
centerTitle: true,
 backgroundColor: Color.fromARGB(255, 188, 245, 177),

),
body: SafeArea(child: 
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child:   Column(
  
    mainAxisAlignment: MainAxisAlignment.center,
  
    
  

  
    children: [
  

//it contain list
Center(
  child:   Container(height: 240,
  
  
  
  child: 
ListView(
  shrinkWrap: true,
  children: [

Center(
  child:   Container(height: 80,width: 380,
  
  decoration: BoxDecoration(color: Color.fromARGB(255, 241, 208, 19),
  borderRadius: BorderRadius.circular(20)
  ),
  
  child: Column(children: [
  
   Padding(
     padding: const EdgeInsets.only(right: 0),
     child: Text("Emai: \t\t$email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ),
   Text("User Type:\t\t\t\t\t $usertype ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ]),
   ),
)  , 

Center(
  child:   Container(height: 80,width: 380,
  
  decoration: BoxDecoration(color: Color.fromARGB(255, 152, 243, 48),borderRadius: BorderRadius.circular(20)),
  
  child: Column(children: [
  
   Padding(
     padding: const EdgeInsets.only(right: 0),
     child: Text("Emai: \t\t$email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ),
   Text("User Type:\t\t\t\t\t $usertype ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ]),
   ),
)  , 

Center(
  child:   Container(height: 80,width: 380,
  
  decoration: BoxDecoration(color: Color.fromARGB(255, 48, 126, 243),borderRadius: BorderRadius.circular(20)),
  
  child: Column(children: [
  
   Padding(
     padding: const EdgeInsets.only(right: 0),
     child: Text("Emai: \t\t$email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ),
   Text("User Type:\t\t\t\t\t $usertype ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ]),
   ),
)  , 

Center(
  child:   Container(height: 80,width: 380,
  
  decoration: BoxDecoration(color: Color.fromARGB(255, 29, 205, 236),borderRadius: BorderRadius.circular(20)),
  
  child: Column(children: [
  
   Padding(
     padding: const EdgeInsets.only(right: 0),
     child: Text("Emai: \t\t$email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ),
   Text("User Type:\t\t\t\t\t $usertype ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ]),
   ),
)  , 


Center(
  child:   Container(height: 80,width: 380,
  
  decoration: BoxDecoration(color: Color.fromARGB(255, 235, 92, 9),borderRadius: BorderRadius.circular(20)),
  
  child: Column(children: [
  
   Padding(
     padding: const EdgeInsets.only(right: 0),
     child: Text("Emai: \t\t$email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ),
   Text("User Type:\t\t\t\t\t $usertype ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
   ]),
   ),
)  , 

  
],),




   ),
)  , 
  
  
  SizedBox(height: 30,),
  
  
  
  //logout button
  
  my_button(
  
                    titlee: 'Logout',
  
                    onpress: ()async {
  
  
  
  //now down side create shared perfence object(sp) and use await b/c w use asyncafter onpress
  
  SharedPreferences sp=await SharedPreferences.getInstance(); 
  
  sp.clear();//when user click logout button then whole data from sp will be cleared and then islogin will be false
  
                     // print(sp.getString('usertyp'));   <=use this to check its working or not
  
                   
  
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
  
                    },
  
                    colorr:Color.fromARGB(255, 188, 245, 177),
  
                  ),
  
  
  
  
  
  ],),
)


),

    );
  }
}