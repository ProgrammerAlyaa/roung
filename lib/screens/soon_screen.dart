import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SoonScreen extends StatelessWidget {
  const SoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 90,
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'قريبـًا',
                  textStyle: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 103,
          ),
          Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_lx2dnmf4.json',
            height: 280,
          ),
        ]));
  }
}