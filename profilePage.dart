import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class profilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('프로필'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,

      ),
      
      body: Padding(
        
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Go to main page'),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),


          ],

        ),
        
      ),

    );
  }
}


