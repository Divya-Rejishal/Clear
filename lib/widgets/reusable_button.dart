import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {this.buttonTitle, this.buttonColor, this.buttonTextColor, this.onTap});
  final String buttonTitle;
  final Color buttonColor;
  final Color buttonTextColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
