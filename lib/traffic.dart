import 'package:flutter/material.dart';

class Traffic extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    
    return TrafficState();
  }

}

class TrafficState extends State<Traffic>
{
  Color boxcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0, right: 20.0),
              child: Container(
                height: 30.0,
                width: 30.0,
                 color: boxcolor,
                 
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 40.0),
              child: Row(
                children: <Widget>[
                  RaisedButton(onPressed: (){
                    setState(() {
                      boxcolor = Colors.red;
                    });

                  },
                  child: Text('red', style: TextStyle(color:Colors.red),), ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: RaisedButton(onPressed: (){
                      setState(() {
                        boxcolor = Colors.green;
                      });

                    },
                 child: Text('green', style: TextStyle(color:Colors.green),),),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: RaisedButton(onPressed: (){
                     setState(() {
                       boxcolor = Colors.orange;
                     });

                   },
                   child: Text('orange', style: TextStyle(color:Colors.orange),),),
                 )
                ],
              ),
            ),
            
          ],

        ),
      ),
     
    );
  }
  
}