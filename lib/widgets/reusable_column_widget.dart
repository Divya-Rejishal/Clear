import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/reusable_text_widget.dart';
import 'package:to_do_app/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ReusableColumnWidget extends StatelessWidget {
  ReusableColumnWidget(
      {@required this.pageController,
      this.textpart1,
      this.textpart2,
      this.textpart3,
      this.textpart4,
      this.textStylePart1,
      this.textStylePart2,
      this.textStylePart3,
      this.textStylePart4,
      this.demoImageName,
      this.tagName});
  final PageController pageController;
  final String textpart1;
  final String textpart2;
  final String textpart3;
  final String textpart4;
  final TextStyle textStylePart1;
  final TextStyle textStylePart2;
  final TextStyle textStylePart3;
  final TextStyle textStylePart4;
  final String demoImageName;
  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: textpart1,
            style: textStylePart1,
            children: <TextSpan>[
              TextSpan(
                text: textpart2,
                style: textStylePart2,
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
            text: textpart3,
            style: textStylePart3,
            children: <TextSpan>[
              TextSpan(
                text: textpart4,
                style: textStylePart4,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 8,
          effect: JumpingDotEffect(
            activeDotColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          // padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Image.asset(
            demoImageName,
          ),
          // height: 600,
        ),
      ],
    );
  }
}
