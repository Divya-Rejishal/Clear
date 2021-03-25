import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/widgets/reusable_button.dart';

class UseIcloudScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFEF9E7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('images/iCloud-256.png'),
          ),
          RichText(
            text: TextSpan(
              text: 'Use',
              style: kNormalTextStyle.copyWith(
                fontSize: 35.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' iCloud?',
                  style: kBoldTextStyle.copyWith(
                    fontSize: 35.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  'Storing you list in iCloud allows you to keep your data in sync across your iPhone, iPad and Mac.',
              style: kNormalTextStyle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableButton(
                buttonColor: Color(0xFFFEF9E7),
                buttonTitle: 'Not Now',
                buttonTextColor: Colors.black,
                onTap: () {},
              ),
              ReusableButton(
                buttonColor: Color(0xFFFEF9E7),
                buttonTitle: 'Use iCloud',
                buttonTextColor: Colors.black,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
