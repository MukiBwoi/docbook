import 'package:doctor_app/Models/colors.dart';
import 'package:doctor_app/Models/field_properties.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginFormField extends StatefulWidget {
  final FiledProperties value;

  const LoginFormField({Key? key, required this.value}) : super(key: key);

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  bool _obsecureText = false;
  _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final properties = Provider.of<FiledProperties>(context);
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Form(
      child: SizedBox(
        width: _width,
        height: _height * 0.065,
        child: TextFormField(
          obscureText: _obsecureText,
          decoration: InputDecoration(
            labelStyle: TextStyle(
              color: FocusNode().hasFocus
                  ? AllColors().primaryColor
                  : AllColors().greyColor,
              fontWeight: FontWeight.w400,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AllColors().primaryColor, width: 2),
            ),
            suffixIcon: widget.value.labelName == 'Password*'
                ? IconButton(
                    onPressed: _toggle,
                    icon: _obsecureText
                        ? Icon(
                            Icons.visibility,
                            color: AllColors().greyColor,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: AllColors().greyColor,
                          ))
                : const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            labelText: widget.value.labelName,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
