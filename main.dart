import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gangchudemo/favorite_subject.dart';
import 'package:gangchudemo/login_page.dart';
import 'package:gangchudemo/profilePage.dart';
import 'package:gangchudemo/user_profile.dart';
import 'dart:io';
import 'home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context) => home_page(),
        '/b': (context) => user_profile(),
        '/c': (context) => favorite_subject(),
        '/d': (context) => profilePage(),

      },

      /*title: '가천강추',
      theme: ThemeData(

        primarySwatch: Colors.blue

      ),

      home: MyHomePage(),*/

    );

  }
}

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('profile page'),
          onPressed: (){
            Navigator.push(context2, MaterialPageRoute(
                builder: (context) => profilePage()));
          },
        ),
      ),

    );
  }
}

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context3) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('go home'),
          onPressed: (){
            Navigator.pop(context3);
          },
        ),
      ),

    );
  }
}
*/

/*
class _MyApp extends State<MyApp> {
  int _selectedIndex = 0;

  /*final screens = [

    HomePage(),
    FavoritePage(),
    RegistProfileState(),
    SubjectPage()

  ]*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('가천강추'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),

          BottomNavigationBarItem(
            title: Text('Subject'),
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            title: Text('Favorites'),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  List _widgetOptions = [
    Text(
      'Home',
      style: TextStyle(fontSize: 30),
    ),

    Text(
      'Subject',
      style: TextStyle(fontSize: 30),
    ),

    Text(
      'Favorites',
      style: TextStyle(fontSize: 30),
    ),

    Text(
      'Profile',
      style: TextStyle(fontSize: 30),
    ),
  ];
}*/