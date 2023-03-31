import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/provider_state.dart';
import 'package:shop_app/screens/auth.dart';
import 'package:shop_app/screens/basket_screen.dart';
import 'package:shop_app/screens/front_screen.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/login_screen.dart';
import 'package:shop_app/screens/saluns_details.dart';
import 'package:shop_app/screens/start_screen.dart';
import 'package:shop_app/screens/endscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProvState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [Locale('ar', 'AE')],
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.light(
              primary: colorb,
              onPrimary: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => StartScreen(),
           '/auth': (context) => Auth(),
          '/login': (context) => LoginScreen(),
          '/front': (context) => FrontScreen(),
        },
      ),
    );
  }
}
