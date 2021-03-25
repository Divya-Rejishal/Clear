import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/widgets/reusable_column_widget.dart';

class DemoScreenSecond extends StatelessWidget {
  final pageController = PageController(initialPage: 2, viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      backgroundColor: Color(0xFFFEF9E7),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: ReusableColumnWidget(
          pageController: pageController,
          textpart1: 'Tap and hold',
          textpart2: ' to pick an item up.',
          textpart3: 'Drag it up or down to change its priority.',
          textStylePart1: kBoldTextStyle,
          textStylePart2: kNormalTextStyle,
          textStylePart3: kNormalTextStyle,
          demoImageName: 'images/Demo2.png',
          tagName: '',
        ),
      ),
    );
  }
}
