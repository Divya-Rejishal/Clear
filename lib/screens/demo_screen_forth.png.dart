import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/widgets/reusable_column_widget.dart';

class DemoScreenForth extends StatelessWidget {
  final pageController = PageController(initialPage: 4, viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      backgroundColor: Color(0xFFFEF9E7),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: ReusableColumnWidget(
          pageController: pageController,
          textpart1: 'Pinch together vertically',
          textpart2: ' to collapse your current level and navigate up.',
          textStylePart1: kBoldTextStyle,
          textStylePart2: kNormalTextStyle,
          demoImageName: 'images/Demo4.png',
          tagName: '',
        ),
      ),
    );
  }
}
