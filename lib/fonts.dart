import 'package:flutter/material.dart';

class Font extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Text('pavitra', style: TextStyle(fontSize: 50,
                fontFamily: 'GothamBold'),),
            //  Text('pavitra', style: TextStyle(fontSize: 40,
            //  fontFamily: 'DancingScript'),),
            //  Text('pavitra', style: TextStyle(fontSize: 30,
            //  fontFamily: 'DancingScript'),),
           ],
         ),
       ),
    );
  }
  
}