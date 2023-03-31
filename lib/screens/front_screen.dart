import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/provider_state.dart';
import 'package:shop_app/screens/profile_screen.dart';

import '../constants.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provState = Provider.of<ProvState>(context);
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        provState.changeIsOutToFlase();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: provState.pages[provState.selected_index],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 50,
                color: Color.fromARGB(255, 250, 248, 248),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          provState.changeIsOut();
                        },
                        icon: Icon(Icons.person,
                            color: Colors.grey.withOpacity(0.5))),
                    IconButton(
                        onPressed: () {
                          provState.changeIndex(3);
                        },
                        icon: Icon(Icons.calendar_month,
                            color: provState.selected_index == 3
                                ? colorb
                                : Colors.grey.withOpacity(0.5))),
                    IconButton(
                        onPressed: () {
                          provState.changeIndex(0);
                        },
                        icon: Icon(Icons.home,
                            color: provState.selected_index == 0
                                ? colorb
                                : Colors.grey.withOpacity(0.5))),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
                top: 0,
                bottom: 0,
                left: provState.is_out ? width : width * 0.25,
                child: Container(
                  width: width * 0.75,
                  color: Colors.white,
                  child: ProfileScreen(),
                ),
                duration: Duration(milliseconds: 200))
          ],
        ),
      ),
    );
  }
}