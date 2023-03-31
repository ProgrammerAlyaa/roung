import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {required this.text,
      required this.icon,
      required this.arrowShown,
      required this.onpressed});
  final String text;
  final IconData icon;
  final bool arrowShown;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 10,
      color: colorb,
      onPressed: onpressed,
      height: 70,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Icon(
          icon,
          color: Colors.grey[800],
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
      ]),
    );
  }
}