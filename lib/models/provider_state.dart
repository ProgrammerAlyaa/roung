import 'package:flutter/material.dart';
import 'package:shop_app/screens/all_salun_screen.dart';
import 'package:shop_app/screens/basket_screen.dart';
import 'package:shop_app/screens/booking_screen.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/login_screen.dart';
import 'package:shop_app/screens/saluns_details.dart';
import 'package:shop_app/screens/soon_screen.dart';
import 'package:shop_app/screens/start_screen.dart';
import 'package:shop_app/screens/endscreen.dart';

class ProvState extends ChangeNotifier {
  int selected_index = 0;
  bool is_out = true;

  void changeIndex(int index) {
    selected_index = index;
    notifyListeners();
  }

  void changeIsOut() {
    is_out = !is_out;
    notifyListeners();
  }

  void changeIsOutToFlase() {
    is_out = true;
    notifyListeners();
  }

  static String? titleName;
  static String id = '';
  static String title = '';
  static String title2 = '';

  List<Widget> pages = [
    HomeScreen(),
    SalunsDetails(title: title),
    AllSalunScreen(title: title2, id: id),
    BookingScreen(),
    SoonScreen(),
    LoginScreen(),
    basketscreen(),
    endscreen(),
  ];

  void setTitle(String newTitle) {
    title = newTitle;
    changeIndex(1);
    notifyListeners();
  }

  void setTitle2(String newTitle, String newId) {
    title2 = newTitle;
    id = newId;
    print('===========');
    notifyListeners();
    changeIndex(2);
    notifyListeners();
  }

  String title2Returned() {
    return title2;
  }

  String idReturned() {
    return id;
  }

  String title1Returned() {
    return title;
  }
}