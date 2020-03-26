import 'package:flutter/material.dart';
import 'package:mixchat_app/screens/main_screen.dart';

void main()
{
  runApp(MaterialApp(
    title: "MixChat - Let's Chat!",
    debugShowCheckedModeBanner: false,
     theme: new ThemeData(
       primaryColor: Colors.red,
       accentColor: Color(0xFFFEF9EB),
     ),
    home: HomeScreen(),
  ));
}