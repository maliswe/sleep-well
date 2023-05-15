import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sleep_well/progress_bar.dart';
import 'package:sleep_well/progress_circle.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen(this.goBack, {super.key});
  final void Function() goBack;

  @override
  // ignore: no_logic_in_create_state
  State<ScoreScreen> createState() => _ScoreScreenState(goBack);
}

class _ScoreScreenState extends State<ScoreScreen> {
  _ScoreScreenState(this.goBack);

  final void Function() goBack;
  static const String humidityIcon = "assets/images/humidity.png";
  static const String lightIcon = "assets/images/light.png";
  static const String loudIcon = "assets/images/loud.png";
  static const String tempIcon = "assets/images/temp.png";

  double paddingSize = 10;

  @override
  Widget build(context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 10,
          right: 0,
          child: SizedBox(
            height: 80,
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 102, 128),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      iconSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      onPressed: goBack,
                    ),
                  ),
                ),
                const SizedBox(width: 115),
                const Text(
                  "Score",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 124,
          left: 0,
          right: 0,
          bottom: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const ProgressCircle(0.89, 140),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: paddingSize, left: 8, right: 8, top: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: const Color.fromARGB(255, 18, 131, 162),
                        child: const Text(
                          "Your overal sleep invairoment was good \nYou can see more details down below",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: paddingSize, left: 8, right: 8, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 18, 131, 162),
                        child: const ExpandableProgressBar(tempIcon),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: paddingSize, left: 8, right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 18, 131, 162),
                        child: const ExpandableProgressBar(lightIcon),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: paddingSize, left: 8, right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 18, 131, 162),
                        child: const ExpandableProgressBar(loudIcon),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: paddingSize, left: 8, right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color.fromARGB(255, 18, 131, 162),
                        child: const ExpandableProgressBar(humidityIcon),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
