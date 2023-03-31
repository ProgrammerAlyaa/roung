import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class endscreen extends StatefulWidget {
  const endscreen({super.key});

  @override
  State<endscreen> createState() => _endscreenState();
}

class _endscreenState extends State<endscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_lp7qD9RDx1.json',
              height: 500),
          SizedBox(
            height: 1,
          ),
          Text(
            'تم الحجز بنجاح',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 187, 186, 186),
            ),
          )
        ]),
      ),
    );
  }
}