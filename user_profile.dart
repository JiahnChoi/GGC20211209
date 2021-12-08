import 'package:flutter/material.dart';

class user_profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('일단넣기'),
      ),
      body: Center(
        child: Text('일단넣음',
          style: TextStyle(
              fontSize: 24.0
          ),),
      ),
    );
  }
}
