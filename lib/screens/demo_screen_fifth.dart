import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/widgets/reusable_column_widget.dart';

class DemoScreenFifth extends StatelessWidget {
  final pageController = PageController(initialPage: 5, viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // height: MediaQuery.of(context).size.height,
      backgroundColor: Color(0xFFFEF9E7),
      body: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ReusableColumnWidget(
          pageController: pageController,
          textpart1: 'Tap on a list',
          textpart2: ' to see its content.',
          textpart3: 'Tap on a list title',
          textpart4: ' to edit it.',
          textStylePart1: kBoldTextStyle,
          textStylePart2: kNormalTextStyle,
          textStylePart3: kBoldTextStyle,
          textStylePart4: kNormalTextStyle,
          demoImageName: 'images/Demo5.png',
          tagName: '',
        ),
      ),
    );
  }
}
