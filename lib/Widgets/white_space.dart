import 'package:flutter/material.dart';

class WhiteSpace extends StatelessWidget {
  final double w;
  final double h;
  const WhiteSpace({ Key? key, required this.w, required this.h }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}