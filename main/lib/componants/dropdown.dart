////note i copied this code paste in text form there for i comente out this



// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   String dropdownvalue = 'User Type';
//   var items =  ['User Type','Ceo','Employe'];
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               DropdownButton(
//                 value: dropdownvalue,
//                   icon: Icon(Icons.keyboard_arrow_down),
//                   items:items.map((String items) {
//                        return DropdownMenuItem(
                        
//                            value: items,
//                            child: Text(items,style: TextStyle(fontFamily: 'a1'),),
//                        );
//                   }
//                   ).toList(),
//                 onChanged: (String? newValue){
//                   setState(() {
//                     dropdownvalue = newValue!;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
    
//   }
// }