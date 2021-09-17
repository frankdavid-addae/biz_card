// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const BizCardApp());
}

class BizCardApp extends StatelessWidget {
  const BizCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kDarkColor = Color(0xFF2B292D);
    const kGreyColor = Color(0xFFD9D9D9);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: kDarkColor,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              Text(
                'Frank David Addae',
                style: TextStyle(
                  color: kGreyColor,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico-Regular',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
