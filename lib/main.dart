import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      // ignore: prefer_const_constructors
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),

      debugShowCheckedModeBanner: false,

      routes: {
        // ignore: prefer_const_constructors
        "/":(context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoute.homeRoute:(context) => HomePage(),
        // ignore: prefer_const_constructors
        MyRoute.loginRoute:(context) => LoginPage()
      },

    );
  }
}