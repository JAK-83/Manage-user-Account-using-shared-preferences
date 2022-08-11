import 'package:flutter/material.dart';
import 'package:telenor_portal/pages/login.dart';
import 'package:telenor_portal/pages/splash_screen.dart';

void main() {
  runApp(tele_app());
}
class tele_app extends StatefulWidget {
  tele_app({Key? key}) : super(key: key);

  @override
  State<tele_app> createState() => _tele_appState();
}

class _tele_appState extends State<tele_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home:       splash(),         // login() 


    );
  }
}