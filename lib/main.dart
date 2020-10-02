import 'package:flutter/material.dart';
import 'welcomePage.dart'
import 'package:flutter_login_signup/src/loginPage.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
           bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
         ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
    navigatorObservers: [],
    routes: {
      "signup": (context) => SignUpPage(),
      "loginPage": (context) => LoginPage(),
      "welcomePage": (context) => WelcomePage(),
    },
    );
  }
}
