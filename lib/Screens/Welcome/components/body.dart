import 'package:flutter/material.dart';
import 'package:login/Screens/Welcome/components/background.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/components/rounded_social_media.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.2,
        ),
        Text(
          "Login",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Blinker-SemiBold.ttf'),
        ),
        RoundedInputField(
          hintText: "Email",
          onChanged: (String value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        SizedBox(height: size.height * 0.03),
        RoundedButton(
          text: "Login",
          press: () {},
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Text(
          "Forgot your password?",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: size.height * 0.2,
        ),
        Text(
          "or connect with",
          style: TextStyle(
            color: Color(0xff7A7A7A),
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          children: [
            RoundedSocialMedia(
              text: "Facebook",
              press: () {},
              icon: Icons.facebook,
              color: Color(0xff),
              // icon: imageAsset: 'assets/image'
            ),
            RoundedSocialMedia(
              text: "Twitter",
              press: () {},
              icon: Icons.facebook,
            ),
          ],
        ),


        SizedBox(
          height: size.height * 0.03,
        ),
        RichText(
            text: TextSpan(
                // text: "Don't have account?, "),
                children: [
              TextSpan(
                  text: "Don't have account?   ",
                  style: TextStyle(color: Color(0xff7A7A7A), fontSize: 12),),
              TextSpan(
                text: 'Sign up',
                style: TextStyle(
                  color: Color(0xff6A74CF), fontSize: 12,
                ),
              ),
            ])),
      ],
    ));
  }
}


