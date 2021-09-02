import 'package:flutter/material.dart';

class SplashIcon extends StatelessWidget {
  final Color iconbgColor;
  final bool needShadow;
  const SplashIcon({Key? key, required this.iconbgColor, required this.needShadow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width / 3.5,
      height: _height / 7.5,
      decoration: BoxDecoration(
        color: iconbgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          needShadow?BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ):const BoxShadow()
        ],
      ),
    );
  }
}
