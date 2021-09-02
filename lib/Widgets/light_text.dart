import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  final String lightText;
  final TextAlign textAlign;
  const LightText({Key? key, required this.lightText, required this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      lightText,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: textAlign,
    );
  }
}
