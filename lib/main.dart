// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const BizCardApp());
}

const kDarkColor = Color(0xFF23414E);
const kGreyColor = Color(0xFFD9D9D9);

class BizCardApp extends StatelessWidget {
  const BizCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kDarkColor = Color(0xFF23414E);
    const kGreyColor = Color(0xFFD9D9D9);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kDarkColor,
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
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  letterSpacing: 2.5,
                  color: kGreyColor.withOpacity(0.8),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro-Regular',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: kGreyColor,
                ),
              ),
              ContactCard(icon: Icons.phone, text: '+233 24 762 7952'),
              ContactCard(
                icon: Icons.email,
                text: 'frankdavid.addae@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      color: kGreyColor.withOpacity(0.8),
      child: ListTile(
        horizontalTitleGap: 5.0,
        leading: Icon(
          icon,
          color: kDarkColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: kDarkColor,
            fontSize: 20.0,
            fontFamily: 'SourceSansPro-Regular',
          ),
        ),
      ),
    );
  }
}
