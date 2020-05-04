import 'package:flutter/material.dart';

class Toggle extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
   
    return ToggleState();
  }
  
}
bool value = false;

class ToggleState extends State<Toggle>
{
   
  @override
  Widget build(BuildContext context) {
    String textvalue = value ? "clicked" : " not clicked";
  
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(textvalue),
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: RaisedButton(onPressed: (){
                setState(( ) {
                  value = !value;
                });
              }),
            )
          ],
        ),
      ),
    );
  }

}