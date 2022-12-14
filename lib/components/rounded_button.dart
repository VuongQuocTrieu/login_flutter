import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: 35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          // color: kPrimaryColor,
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20,),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 12, fontFamily: 'Blinker-SemiBold.ttf'),
          ),
        ),
      ),
    );
  }
}