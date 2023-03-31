import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/provider_state.dart';
import '../widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
 const  ProfileScreen({super.key});
 


  @override
  Widget build(BuildContext context) {


 String text = "SaraAli@gmail.com";
  var provState = Provider.of<ProvState>(context);

    return ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          Row(children: [
            Positioned(
              child: Icon(Icons.arrow_circle_right_outlined),
              top: 2,
            ),
          ]),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/R (1).jpg'),
                ),
                SizedBox(height: 20),
                Text(
                   ' $text',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[800],
                    fontSize: 18,
                  ),
                ),
                
                SizedBox(height: 40),
                ProfileMenuItem(
                  text: ' الإعدادات ',
                  icon: Icons.settings,
                  arrowShown: true,
                  onpressed: () {
                    provState.changeIndex(4);
                    provState.changeIsOutToFlase();
                  },
                ),
                SizedBox(height: 20),
                ProfileMenuItem(
                  text: ' حجوزاتي ',
                  icon: Icons.receipt,
                  arrowShown: true,
                  onpressed: () {
                    provState.changeIndex(3);
                    provState.changeIsOutToFlase();
                  },
                ),
                // SizedBox(height: 20),
                // ProfileMenuItem(
                //   text: ' السلة ',
                //   icon: Icons.shopping_bag_outlined,
                //   arrowShown: true,
                //   onpressed: () {},
                // ),
                SizedBox(height: 20),
                ProfileMenuItem(
                  text: ' للمساعدة ',
                  icon: Icons.help_outline,
                  arrowShown: true,
                  onpressed: () {
                    provState.changeIndex(4);
                    provState.changeIsOutToFlase();
                  },
                ),
                SizedBox(height: 20),
                ProfileMenuItem(
                  text: ' تسجيل الخروج ',
                  icon: Icons.logout,
                  arrowShown: false,
                  onpressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                ),
              ],
            ),
          ),
        ]);
  }
}