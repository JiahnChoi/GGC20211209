import 'package:flutter/material.dart';

class favorite_subject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('favorite'),
      ),
      body: Center(
        child: Text('favorite',
        style: TextStyle(
          fontSize: 24.0
        ),),
      ),
    );
  }
}
