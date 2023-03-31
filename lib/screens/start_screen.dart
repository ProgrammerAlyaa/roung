import 'package:flutter/material.dart';
import 'package:shop_app/widgets/my_button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/start.jpg',
              height: 300,
              width: 300,
            ),
            Text(
              'رونق',
              style: GoogleFonts.amiri(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: colorb,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'جمعنا لكِ كل ماتحتاجينه لجمالكِ في مكان واحد !',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 187, 186, 186)),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              color: Colors.brown,
              title: '  لنبدأ   ',
              onpressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}