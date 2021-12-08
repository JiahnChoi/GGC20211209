import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        title: Text("로그인"),

    ),

    body: Center(
      child: FloatingActionButton.extended(
          onPressed: (){
            GoogleSignIn().signIn();
          },
          label: Text('Sign in with google'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),

    );
  }
}
