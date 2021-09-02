import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String normalText;
  final Color normalTextColor;
  const NormalText({Key? key, required this.normalText, required this.normalTextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      normalText,
      style: TextStyle(
            fontSize: 16,
            color: normalTextColor,
          ),
    );
  }
}
