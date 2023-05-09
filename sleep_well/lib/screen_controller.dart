import 'package:adv/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv/second_screen.dart';
import 'package:adv/score_screen.dart';

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
    activeScreen = HomeScreen(goBack);
    super.initState();
  }

  // Switch to the --- screen
  void switchScreen() {
    setState(() {
      activeScreen = HomeScreen(goBack);
    });
  }

  // Switch to the score screen
  void goBack() {
    setState(() {
      activeScreen = ScoreScreen(switchScreen);
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
              fit: BoxFit.cover,
            ),
          ),

          //Loads the screen
          child: activeScreen,
        ),
      ),
    );
  }
}
 
 
/*
gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 53, 109, 137),
                Color.fromARGB(255, 3, 77, 85)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
*/