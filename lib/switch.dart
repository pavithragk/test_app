import 'package:flutter/material.dart';
import 'package:test_app/utils/colors.dart';
 
 class SwitchApp extends StatefulWidget
 {
  @override
  State<StatefulWidget> createState() {
    
    return SwitchAppState();
  }

 }
 
 class SwitchAppState extends State<SwitchApp>
 {
   bool value =false;
  @override
  Widget build(BuildContext context) {

    String title = value ? "change to morning mode" : "change to night mode";
    String text = value ? "Good night!" : "Good morning!";
    String path = value ? "assets/images/night.png" : "assets/images/morning.png";


   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.purple[900],
       title: Text(title),
     ),
     body: Container(
       color: Colors.black,
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 70.0,
            // color: ColorConstants.primaryColor,
             child: Switch(value: value,onChanged:(bool value) 
             {setState(() {
               value = !value;
              
             });
             }),
          ),
          Image.asset(path),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              height: 250.0,
              width: 400.0,
              color: ColorConstants.secondaryColor,
              child: Text(text, style: TextStyle(color:ColorConstants.primaryColor,
              ),
              textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
     ),

   );
  }

 }