import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class my_button extends StatelessWidget {

  final String titlee;
  final Color colorr;
  final VoidCallback onpress;
  //create constructors
  const my_button({Key? key,
  required this.titlee, 
  required this.onpress,
  this.colorr= const Color(0xffa5a5a5),
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 



        InkWell(  //<= create clicking event on container
        onTap: onpress,
          child: Container(
            height: 50,
            width: 200,
            decoration:  BoxDecoration(
            
           // shape: BoxShape.circle,
            color: colorr,
            borderRadius: BorderRadius.circular(10)
            
            
            ),
            
                          child: Center(child: Text(titlee,style: TextStyle(
                            fontFamily: 'a1',
                            color: Color.fromARGB(255, 19, 18, 18),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                            )
                            ),
          ),
        
      
    );
  }
}





