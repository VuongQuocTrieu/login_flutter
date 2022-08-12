import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(

        child: TextField(
          // textAlignVertical: TextAlignVertical(y: -1.0),
          // keyboardType: TextInputType.emailAddress,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: -5),
            icon: Icon(
              icon,
              color: Color(0xffD9D9D9),
              size: 15,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xffD0D0D0), fontSize: 12, fontFamily: 'Blinker-SemiBold.ttf'),
            suffixIcon: Icon(
              Icons.check,
              color: Color(0xff6ED788),
              size: 12,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}