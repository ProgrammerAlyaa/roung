import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Lottie.network(
              'https://assets10.lottiefiles.com/packages/lf20_8FtwKDmPxr.json',
              height: 70),
          SizedBox(
            height: 5,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(' حجوزاتي',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))),
        ]),
      ),
    );
  }
}