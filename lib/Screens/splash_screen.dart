import 'dart:async';
import 'package:doctor_app/Widgets/splash_icon.dart';
import 'package:doctor_app/Widgets/splash_text.dart';
import 'package:doctor_app/Widgets/white_space.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    //Mediaquery Screen Sizes
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff304ffe),
      body: SizedBox(
        width: _width,
        height: _height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //splashIcon
            const SplashIcon(iconbgColor: Colors.white,needShadow: true,),

            //space
            WhiteSpace(
              w: _width,
              h: _height * 0.03,
            ),

            //splash text
            const SplashText(),
          ],
        ),
      ),
    );
  }
}
