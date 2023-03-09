import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// const lableTextStyle = TextStyle(
//   fontSize: 18.0,
//   color: Color(0xFF8D8E98),
// );

class IconContent extends StatelessWidget {
  IconContent({@required this.icons, this.lable});
  final IconData icons;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          icons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          // 'MALE',
          lable,
          style: kLableTextStyle,
        )
      ],
    );
  }
}
