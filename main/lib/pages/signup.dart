import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telenor_portal/componants/buttonn.dart';
import 'package:telenor_portal/componants/textform.dart';
import 'package:telenor_portal/pages/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

final formdata = GlobalKey<FormState>(); //<= create form global key
  final emailtext = TextEditingController(); // create email veriable
  final passwordtext = TextEditingController(); // create password veriable
  final usertype=TextEditingController(); // create droped down text contorler    <=this ihavnt used in droped down manue
  String dropdownvalue = 'User Type';  // veriale for drop down manue it holds value
  var items =  ['User Type','Ceo','Employe'];  // veriale for drop down manue it contains value
   List <String> item=['Employe','CEO'];   // create list data for drop dow button
  String? seleckteditem='Ceo';    // create veriable which will hold selection value
////////////////////////////////////////////
 
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
                    "Signup",
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
                    "Create Account",
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
               // formtext(),

               //////////////////////////////
             
Container(
      height: 350,
      width: 260,
      
      decoration: BoxDecoration(
         color: Color.fromARGB(255, 248, 247, 245),
        borderRadius: BorderRadius.circular(20),

 boxShadow:[ 
               BoxShadow(
                  color: Color.fromARGB(255, 188, 245, 177).withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
               ),
               //you can set more BoxShadow() here
              ],

 ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              controller: emailtext,
              decoration: InputDecoration(
                hintText:'Enter Email',
                label: Text("Mail",style: TextStyle(fontFamily: 'a1')),
              suffixIcon: Icon(Icons.email,color: Color.fromARGB(255, 188, 245, 177),),
              ),

            ),
            SizedBox(
              height: 20,
            ),
           
            TextFormField(
              controller: passwordtext,// use controller it will hold data
              decoration: InputDecoration(hintText: 'Password',
              label: Text("Password",style: TextStyle(fontFamily: 'a1'),),
              suffixIcon: Icon(Icons.lock,color: Color.fromARGB(255, 188, 245, 177),),
              ),

            
            ),
        
/////////////////////////////////////////////////drop down strt
 DropdownButton(
                value: dropdownvalue,
                
                  icon: Icon(Icons.keyboard_arrow_down),
                  items:items.map((String items) {
                       return DropdownMenuItem(
                        
                           value: items,
                           child: Text(items,style: TextStyle(fontFamily: 'a1'),),
                       );
                  }
                  ).toList(),
                onChanged: (String? newValue){
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),

  //////////////////////////////////////////drop down edn
    Divider(),
//SizedBox(height: 20,),
//create account button
                my_button(
                  titlee: 'Crete Account',
                  colorr: Color.fromARGB(255, 188, 245, 177),
                  onpress: ()async{
                    SharedPreferences sp=await SharedPreferences.getInstance();
                    sp.setString('email', emailtext.toString());
                    sp.setString('password', passwordtext.toString());
                    sp.setString('usertype', dropdownvalue.toString());

Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
toast();

                    
                  },
                  
                ),
],

        ),
      ),
    ),

//////////////////////////////////////////////
                SizedBox(
                  height: 20,
                ),
                Text("Have an account?",style: TextStyle(fontFamily: 'a1')),
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

  void toast()=>Fluttertoast.showToast(
        msg: "Sucessfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color.fromARGB(255, 119, 245, 119),
        textColor: Color.fromARGB(255, 31, 30, 30),
        fontSize: 16.0
    );

}