import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/reusable_column_widget.dart';
import 'package:to_do_app/constants.dart';

class DemoScreenFirst extends StatelessWidget {
  final pageController = PageController(initialPage: 1, viewportFraction: 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      backgroundColor: Color(0xFFFEF9E7),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: ReusableColumnWidget(
          pageController: pageController,
          textpart1: 'Clear sorts items by',
          textpart2: ' priority',
          textpart3: 'Important items are highlighted at the top....',
          textStylePart1: kNormalTextStyle,
          textStylePart2: kBoldTextStyle,
          textStylePart3: kNormalTextStyle,
          demoImageName: 'images/Demo1.png',
          tagName: 'demo',
        ),
      ),
    );
  }
}
