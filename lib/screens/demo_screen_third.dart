import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/reusable_column_widget.dart';
import 'package:to_do_app/constants.dart';

class DemoScreenThird extends StatelessWidget {
  final pageController = PageController(initialPage: 3, viewportFraction: 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      backgroundColor: Color(0xFFFEF9E7),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: ReusableColumnWidget(
          pageController: pageController,
          textpart1: 'There are three navigation levels...',
          textStylePart1: kNormalTextStyle,
          demoImageName: 'images/Demo3.png',
          tagName: '',
        ),
      ),
    );
  }
}
