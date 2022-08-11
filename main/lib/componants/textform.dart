import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telenor_portal/componants/buttonn.dart';
import 'package:telenor_portal/componants/dropdown.dart';
import 'package:telenor_portal/pages/signup.dart';
import 'package:telenor_portal/pages/student_welcom_screen.dart';
import 'package:telenor_portal/pages/teacher_Screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class formtext extends StatefulWidget {
  formtext({Key? key}) : super(key: key);

  @override
  State<formtext> createState() => _formtextState();
}

class _formtextState extends State<formtext> {
  //create variables
  ///////////////////////////////////
  final formdata = GlobalKey<FormState>(); //<= create form global key
  final emailtext = TextEditingController(); // create email veriable
  final passwordtext = TextEditingController(); // create password veriable
  // final usertype=TextEditingController(); // create droped down text contorler
  String dropdownvalue =
      'User Type'; // veriale for drop down manue it holds value
  var items = [
    'User Type',
    'Ceo',
    'Employe'
  ]; // veriale for drop down manue it contains value
  List<String> item = [
    'Employe',
    'CEO'
  ]; // create list data for drop dow button
  String? seleckteditem =
      'Ceo'; // create veriable which will hold selection value
  //String usertype=sp.getString('usertype')?? '';  //here we check user type and give scrren acording that
////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////

  String usertype = '';

  @override
  void initState() {
    //<=we created this bc/ of sp (sharedprefecne function)
    // TODO: implement initState
    super.initState();
    load_data();
  }

  void load_data() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    //now assig value to veriables we ?? b/c if spget is empty then it will be empty
    usertype = sp.getString('usertype') ?? '';
  }
////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 260,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 248, 247, 245),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 188, 245, 177)
                .withOpacity(0.5), //color of shadow
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
                hintText: 'Enter Email',
                label: Text("Mail", style: TextStyle(fontFamily: 'a1')),
                suffixIcon: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 188, 245, 177),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            TextFormField(
              controller: passwordtext, // use controller it will hold data
              decoration: InputDecoration(
                hintText: 'Password',
                label: Text(
                  "Password",
                  style: TextStyle(fontFamily: 'a1'),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 188, 245, 177),
                ),
              ),
            ),

/////////////////////////////////////////////////drop down strt
            DropdownButton(
              value: dropdownvalue,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(fontFamily: 'a1'),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),

            //////////////////////////////////////////drop down edn
//login button
            my_button(
              titlee: 'Login',
              onpress: () async {
//now down side create shared perfence object(sp) and use await b/c w use asyncafter onpress
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString(
                    'email',
                    emailtext.text
                        .toString()); // now assign emailcontroller value to emai ke
                sp.setString('usertype', dropdownvalue); //set drop down value
                sp.setBool('islogin',
                    true); //u can change data type of set   <=when user will get login then value of this bool became true

                // print(sp.getString('usertyp'));   <=use this to check its working or not

                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>student_screen()));

                if (usertype == 'Employe') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => student_screen()));
                  toast();
                } // employe if end
                else if (usertype == 'Ceo') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => teacher_screen()));
                  toast();
                }
              },
              colorr: Color.fromARGB(255, 188, 245, 177),
            ),

            Divider(),
//SizedBox(height: 20,),
//create account button
            my_button(
              titlee: 'Crete Account',
              colorr: Color.fromARGB(255, 188, 245, 177),
              onpress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
            ),
          ],
        ),
      ),
    );
  }

//toast message
  void toast() => Fluttertoast.showToast(
      msg: "Welcome",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(255, 119, 245, 119),
      textColor: Color.fromARGB(255, 31, 30, 30),
      fontSize: 16.0);
}
