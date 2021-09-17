import 'package:flutter/material.dart';

void main() {
  runApp(const BizCardApp());
}

class BizCardApp extends StatelessWidget {
  const BizCardApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(),
        ),
      ),
    );
  }
}
