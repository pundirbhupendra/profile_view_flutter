import 'package:flutter/material.dart';
import 'package:profile_view_flutter/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      home: Home(),
    );
  }
}
