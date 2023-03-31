import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.color, required this.title, required this.onpressed, });
  final color;
  final String title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Material(
          elevation: 0,
          color: color,
          borderRadius: BorderRadius.circular(40),
          child: MaterialButton(
            onPressed: onpressed,
            minWidth: 30,
            height: 42,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )),
    );
  }
}