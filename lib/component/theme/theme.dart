



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData dark=ThemeData(
  primarySwatch: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.yellow[800],
  hintColor: Colors.grey,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    backgroundColor: HexColor('#CB6313'),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor:  Colors.grey.withOpacity(0.2),
        statusBarIconBrightness: Brightness.light,
  ),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      fontSize: 19.0,
      fontWeight: FontWeight.bold
    ),
  ),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
        color: Colors.white,
    )
  )
);





ThemeData light=ThemeData(
  primaryColor: Colors.deepOrange,
  hintColor: Colors.grey,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.white,

  textTheme: TextTheme(
    bodyText2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
  ),
  appBarTheme:  AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0.28),
        statusBarIconBrightness:Brightness.light
    ),
    // centerTitle: true,
    color: Colors.deepOrangeAccent,
    elevation: 5,
    titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold

    ),

  ),
  // textTheme:  TextTheme(
  //   bodyMedium:  TextStyle(
  //     height: 1.5,
  //     fontSize: 15.0,
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold,
  //   ),
  //
  // ),
);
