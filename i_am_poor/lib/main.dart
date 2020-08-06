import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "I Am Poor",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Center(
            child: Text("I Am Poor"),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/empty_box.png'),
          ),
        ),
      ),
    ),
  );
}
