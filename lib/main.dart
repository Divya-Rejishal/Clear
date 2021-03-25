import 'package:flutter/material.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:to_do_app/screens/demo_screen_fifth.dart';
import 'package:to_do_app/screens/demo_screen_first.dart';
import 'package:to_do_app/screens/demo_screen_forth.png.dart';
import 'package:to_do_app/screens/demo_screen_second.dart';
import 'package:to_do_app/screens/demo_screen_third.dart';
import 'package:to_do_app/screens/icloud_screen.dart';
import 'package:to_do_app/screens/personal_list_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final controller = PageController(initialPage: 0, viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: PageView(
        // pageSnapping: false,
        physics: ClampingScrollPhysics(),
        controller: controller,
        children: [
          WelcomeScreen(),
          DemoScreenFirst(),
          DemoScreenSecond(),
          DemoScreenThird(),
          DemoScreenForth(),
          DemoScreenFifth(),
          UseIcloudScreen(),
          ChangeNotifierProvider<TaskData>(
            create: (context) => TaskData(),
            child: PersonalListScreen(),
          ),
        ],
      ),
    );
  }
}

/*MaterialApp(
home: WelcomeScreen(),
);*/
