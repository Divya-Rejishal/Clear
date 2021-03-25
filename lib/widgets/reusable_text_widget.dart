import 'package:flutter/material.dart';

class ReusableTextWidget extends StatelessWidget {
  final String textString;
  final TextStyle textStyle;

  ReusableTextWidget({this.textString, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      textString,
      textAlign: TextAlign.center,
      style: textStyle,
      maxLines: 2,
    );
  }
}
