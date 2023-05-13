import 'package:sleep_well/log_screen.dart';
import 'package:sleep_well/score_screen.dart';
import 'package:sleep_well/sleep_screen.dart';
import './home_screen.dart';
import 'package:flutter/material.dart';

//This class handles switching screen and rendring the new UI when a new screen is displayed
class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() {
    return _ScreenControllerState();
  }
}

class _ScreenControllerState extends State<ScreenController> {
  Widget? activeScreen;

  //Initialize the first screen that will be loaded
  @override
  void initState() {
    activeScreen = HomeScreen(switchToScore, switchToSleep, switchToLog);
    super.initState();
  }

  // Switch to the --- screen

  void switchToSleep() {
    setState(() {
      activeScreen = SleepScreen(switchToScore);
    });
  }

  void switchToScore() {
    setState(() {
      activeScreen = ScoreScreen(switchToHome);
    });
  }

  void switchToLog() {
    setState(() {
      activeScreen = LogScreen();
    });
  }

  void switchToHome() {
    setState(() {
      activeScreen = HomeScreen(switchToSleep, switchToScore, switchToLog);
    });
  }

  // The main layout of the application (Background colors),
  // Should force all loaded screen to have this layout.
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: const MyAppBar(title: 'S L E E P W E L L'),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
            ),
          ),

          //Loads the screen
          child: activeScreen,
        ),
      ),
    );
  }
}
