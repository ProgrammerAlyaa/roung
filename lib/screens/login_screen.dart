import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/widgets/my_button.dart';
import '../constants.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwprdController = TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
       password: _passwprdController.text.trim(),
    );
  }

@override
void dispose(){
  super.dispose();
  _emailController.dispose();
  _passwprdController.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        
          child : SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/start.jpg',
                height: 150,
                ),
              SizedBox(height: 20,),
                  
                Text('تسجيل الدخول ',
                style: GoogleFonts.robotoCondensed(
            fontSize: 35,fontWeight: FontWeight.bold
                ),
                ),
                  
                Text('  سررنا برؤيتكم مجددًا !  ',
                style: GoogleFonts.robotoCondensed(
            fontSize: 18,
            color: colorb,
                ),
                ),
                SizedBox(height: 50,),
                Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' الإيميل ',
                  ),
                ),
              ),
            ),
                ),
                SizedBox(height: 10,),
                Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _passwprdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' الرقم السري ',
                  ),
                ),
              ),
            ),
                ),
                  
                SizedBox(height: 15,),
          
          
                Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: SignIn,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                 ),
    child: Center(
  child: ElevatedButton(
    onPressed: (){
      Navigator.pushNamed(context, '/front');
    },
    child: Text(
      ' تسجيل الدخول ',
      style: GoogleFonts.robotoCondensed(
        color: colorb,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
       ),
      ),
    ),
              ),
            ),
                ),
                SizedBox(height: 25),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('لم يسبق لك التسجيل ؟ ',
               style: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('التسجيل كمستخدم جديد',
              style: GoogleFonts.robotoCondensed(
                color: colorb,
                fontWeight: FontWeight.bold,),
              ),
            ]),
              ],
            ),
          ),
        ),
      );
      
    
  }
  
}
 