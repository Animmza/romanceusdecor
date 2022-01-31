import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:romanceusdecor/pages/conversation_page.dart';
import 'package:romanceusdecor/pages/create_job.dart';
import 'package:romanceusdecor/pages/forgot_password.dart';
import 'package:romanceusdecor/pages/home.dart';
import 'package:romanceusdecor/pages/login_page.dart';
import 'package:romanceusdecor/pages/new_password.dart';
import 'package:romanceusdecor/pages/signup_page.dart';
import 'package:romanceusdecor/pages/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Color themeColor = Color(0xFFf00d3a);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/loginpage': (context) => const LoginPage(),
        '/signuppage': (context) => SignupPage(),
        '/forgotpassword': (context) => ForgotPassword(),
        '/newpassword': (context) => NewPassword(),
        '/home': (context) => HomePage(),
        '/conversationPage': (context) => ConversationPage(),
        '/createJob': (context) => CreateJob()
      },
      debugShowCheckedModeBanner: false,
      title: 'Romance US Decor',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: GoogleFonts.poppins(),
          button: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w300),
              primary: themeColor,
              shape: BeveledRectangleBorder(),
              side: BorderSide(width: .3, color: themeColor)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: themeColor,
            shape: BeveledRectangleBorder(),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: themeColor,
          ),
        ),
        primaryColor: themeColor,
        backgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(color: Colors.black),
        ),
        timePickerTheme: TimePickerThemeData(
          dialHandColor: themeColor,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleTextStyle: GoogleFonts.lora(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          centerTitle: true,
          color: themeColor,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: Splash(),
    );
  }
}
