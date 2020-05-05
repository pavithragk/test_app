import 'package:flutter/material.dart';
 

 class CartApp extends StatefulWidget
 {
  @override
  State<StatefulWidget> createState() {
   
   return CartAppState();
  }
   
 }

 class CartAppState extends State<CartApp>
 {
   List<String> listItems = ["1","2","Third","4"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('List View', textAlign: TextAlign.start,),
        backgroundColor: Colors.deepOrange[600],

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 150.0),
              child: Text('Enter the list item', style: TextStyle(
                fontSize: 20.0
              ),
              textAlign: TextAlign.left,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(child: TextField(
                onSubmitted: (text) {
                // listItems.add(text);  
                setState(() {
                  
                });   
                },
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: RaisedButton(onPressed: (){
                listItems.add('text'); 
              }, child: Text('Add'),
              color: Colors.green[900],
              textColor: Colors.white,),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: <Widget>[
                              Text('List Items'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Text('Delete'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: const Divider( height: 1.0,
                    color: Colors.black,),
                  ),
                ],
              ),
            ),
            new ListView.builder(
                itemCount: listItems.length,
                 itemBuilder: (context, index) {
                   return ListTile(
                  title: Text(listItems[index]),
                );
               },
              ),
          ],
        
        ),

      ),
    );
  }
   
 }

