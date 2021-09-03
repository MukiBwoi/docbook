import 'package:doctor_app/Models/colors.dart';
import 'package:doctor_app/Models/field_properties.dart';
import 'package:doctor_app/Screens/home_page.dart';
import 'package:doctor_app/Screens/signup.dart';
import 'package:doctor_app/Widgets/button.dart';
import 'package:doctor_app/Widgets/light_text.dart';
import 'package:doctor_app/Widgets/login_form_fields.dart';
import 'package:doctor_app/Widgets/login_icon_text.dart';
import 'package:doctor_app/Widgets/splash_icon.dart';
import 'package:doctor_app/Widgets/white_space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Mediaquery Screen Sizes
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
          width: _width,
          height: _height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SplashIcon(
                iconbgColor: Color(0xff304ffe),
                needShadow: false,
              ),
              WhiteSpace(w: _width, h: _height * 0.02),
              const LoginIconText(),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "Email Address*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "Password*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              const LightText(
                lightText: 'Forgot Password?',
                textAlign: TextAlign.start,
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              Button(
                  buttonText: 'Sign in',
                  newWidth: _width,
                  newHeight: _height * 0.07,
                  buttonColor: AllColors().primaryColor,
                  buttonTextColor: Colors.white,
                  route: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                    );
                  }),
              WhiteSpace(w: _width, h: _height * 0.03),
              const LightText(
                lightText: 'or',
                textAlign: TextAlign.center,
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              Button(
                buttonText: 'Sign in',
                newWidth: _width,
                newHeight: _height * 0.07,
                buttonColor: const Color(0xffeeeeee),
                buttonTextColor: Colors.black,
                route: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const Signup();
                    }),
                  );
                },
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    const TextSpan(text: "Dont't have an account?  "),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => const HomePage(),
                      text: "Create now",
                      style: TextStyle(color: AllColors().primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
