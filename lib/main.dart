import 'package:flutter/material.dart';
import 'package:main/Carts/cartpage.dart';
import 'package:main/Login/CreateAccountView.dart';
import 'package:main/cartpage2/cartpage2.dart';
import 'package:main/createpost/createpost.dart';
import 'package:main/managerpage/managerpage.dart';
import 'package:main/postview/postview.dart';
import 'package:main/savedpage/savedpage.dart';
import 'package:main/startupView/startup_view.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Managerpage(),
    );
  }
}