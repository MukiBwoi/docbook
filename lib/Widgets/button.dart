import 'package:doctor_app/Widgets/normal_text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double newWidth;
  final double newHeight;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonColor;
  final dynamic route;
  const Button({
    Key? key,
    required this.newWidth,
    required this.newHeight,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialButton(
        elevation: 0,
        child: NormalText(
          normalText: buttonText,
          normalTextColor: buttonTextColor,
        ),
        color: buttonColor,
        minWidth: newWidth,
        height: newHeight,
        onPressed: route,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(15))),
      ),
    );
  }
}
