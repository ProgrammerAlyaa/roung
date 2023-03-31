import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.title, required this.imageUrl});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(       
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            // )
          )),
      // )
    );
  }
}