import 'package:flutter/material.dart';

class LoginIconText extends StatelessWidget {
  const LoginIconText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle docbook(Color newcolor) {
      return TextStyle(
        color: newcolor,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
      );
    }

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'doc',
            style: docbook(
              const Color(0xff304ffe),
            ),
          ),
          TextSpan(
            text: 'book',
            style: docbook(Colors.black),
          ),
        ],
      ),
    );
  }
}
