import "package:flutter/material.dart";
import 'package:flutter30days/Utils/AppRoutes.dart';
import 'package:flutter30days/Utils/MyTheme.dart';

import 'Pages/HomePage.dart';
import 'Pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: AppRoutes.mainRoute,
      routes: {
        AppRoutes.homeRoute: (_) => HomePage(),
        AppRoutes.mainRoute: (_) => MainPage(),
      },
    );
  }
}
