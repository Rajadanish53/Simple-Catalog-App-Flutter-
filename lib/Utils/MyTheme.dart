import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme (BuildContext context)=>ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(
            color: Colors.black
          ),

        )
        
      );

  static ThemeData darkTheme (BuildContext context)=>ThemeData(
    primarySwatch: Colors.blue,
  );
}