import 'package:flutter/material.dart';

class SplashText extends StatelessWidget {
  const SplashText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: "Personal Doctor\n",
              style: Theme.of(context).textTheme.bodyText1),
          TextSpan(
              text: "Booking apps",
              style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
