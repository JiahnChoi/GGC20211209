import 'package:flutter/material.dart';

class home_page extends StatelessWidget{

  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(

      title: Text("Home"),

    ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          RaisedButton(
           child: Text('profile page'),
            onPressed: (){
              Navigator.pushNamed(context, '/b');
            },
          ),
          RaisedButton(
            child: Text('Favorite'),
            onPressed: (){
              Navigator.pushNamed(context, '/c');
            },
          ),
          RaisedButton(
            child: Text('profile page2'),
            onPressed: (){
              Navigator.pushNamed(context, '/d');
            },
          ),
        ],
      ),
    ),
    
  );


}