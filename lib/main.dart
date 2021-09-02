import 'package:doctor_app/Models/field_properties.dart';
import 'package:doctor_app/Screens/splash_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => FiledProperties(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(),
          headline2: TextStyle(),
          bodyText1: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 20,
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
