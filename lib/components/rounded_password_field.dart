import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          onChanged: onChanged,
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: -20),
            hintText: "Password",
            hintStyle: TextStyle(color: Color(0xffD0D0D0), fontSize: 12, fontFamily: 'Blinker-SemiBold.ttf'),
            icon: Icon(
              Icons.lock,
              color: Color(0xffD9D9D9),
              size: 15,
            ),
            // suffixIcon: Icon(
            //   Icons.visibility,
            //   color: kPrimaryColor,
            //   size: 12,
            // ),
            border: InputBorder.none,
          ),
        ));
  }
}