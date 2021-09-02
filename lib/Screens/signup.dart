import 'package:doctor_app/Models/colors.dart';
import 'package:doctor_app/Models/field_properties.dart';
import 'package:doctor_app/Screens/home_page.dart';
import 'package:doctor_app/Widgets/button.dart';
import 'package:doctor_app/Widgets/light_text.dart';
import 'package:doctor_app/Widgets/login_form_fields.dart';
import 'package:doctor_app/Widgets/splash_icon.dart';
import 'package:doctor_app/Widgets/white_space.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WhiteSpace(w: _width, h: _height * 0.04),
              SplashIcon(
                  iconbgColor: AllColors().primaryColor, needShadow: false),
              WhiteSpace(w: _width, h: _height * 0.03),
              const Text(
                "Create an account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              const LightText(
                lightText: 'Create a new account to make your booking \neasier',
                textAlign: TextAlign.center,
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "First Name*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "Last Name*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "Email Address*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "Mobile Number*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              LoginFormField(
                value: FiledProperties(labelName: "NIC No/Passport No*"),
              ),
              WhiteSpace(w: _width, h: _height * 0.03),
              Button(
                newWidth: _width,
                newHeight: _height * 0.07,
                buttonText: 'Create Now',
                buttonColor: AllColors().primaryColor,
                buttonTextColor: Colors.white,
                route: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HomePage()));
                },
              ),
              WhiteSpace(w: _width, h: _height * 0.02),
              Button(
                newWidth: _width,
                newHeight: _height * 0.07,
                buttonText: 'Back To Login',
                buttonColor: Colors.white,
                buttonTextColor: AllColors().primaryColor,
                route: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
