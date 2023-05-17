import 'package:sleep_well/log_screen.dart';
import 'package:sleep_well/score_screen.dart';
import 'package:sleep_well/sleep_screen.dart';
import './home_screen.dart';
import './loading_screen.dart';
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
    activeScreen = const LoadingScreen();
    navigateToHomeScreen();
    super.initState();
  }


  void navigateToHomeScreen() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        activeScreen = HomeScreen(switchToScore, switchToSleep, switchToLog);
      });
    });
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
      activeScreen = LogScreen(switchToScore, switchToHome);
    });
  }

  void switchToHome() {
    setState(() {
      activeScreen = HomeScreen(switchToScore, switchToSleep, switchToLog);
    });
  }

  // The main layout of the application (Background colors),
  // Should force all loaded screen to have this layout.
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 18, 131, 162),
                BlendMode.color,
              ),
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
