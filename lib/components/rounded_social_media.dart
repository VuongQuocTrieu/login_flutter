import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundedSocialMedia extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;

  const RoundedSocialMedia({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.icon = Icons.check,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),

        // child: TextButton(
        //     style: TextButton.styleFrom(
        //       backgroundColor: kPrimaryColor,
        //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //     ),
        //     onPressed: null,
        //     child: Row(
        //       // mainAxisAlignment: MainAxisAlignment.start,
        //       // mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         // Padding(
        //         //   padding: const EdgeInsets.only(right: 8),
        //         //   icon : Icon(
        //         //     icon,
        //         //     color: kPrimaryColor,
        //         //   ),
        //         //   // Icon(Icons.facebook, color: Colors.white, ),
        //         // ),
        //
        //         Expanded(
        //           child: ElevatedButton.icon(
        //               onPressed: () {},
        //               icon: Icon(
        //                 icon,
        //                 color: Colors.white,
        //               ),
        //               label: Text(
        //                 text,
        //                 style: TextStyle(
        //                   color: textColor,
        //                   fontSize: 10,
        //                 ),
        //               )),
        //         ),
        //
        //         // Text(
        //         //   text,
        //         //   style: TextStyle(
        //         //     color: textColor,
        //         //     fontSize: 10,
        //         //   ),
        //         // ),
        //       ],
        //     )
        //     // Text("Facebook", style: TextStyle(color: Colors.black, fontSize: 10,),),
        //     ),

        child: Expanded(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            label: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 10,
              ),
            ),),
        ),
      ),
    );
  }
}