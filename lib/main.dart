import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mekarohub/screen/signupscreen.dart';

import './screen/firstscreen.dart';
import './screen/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Work asycn

  // SET PHONE ORIENTATION
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mekaro Hub',
      theme: ThemeData(
        primaryColor: const Color(0XFF4B8CA6),
        primaryColorDark: const Color(0XFF245C73),
        scaffoldBackgroundColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: Colors.black,
              ),
              subtitle1: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w300,
                fontSize: 20,
                color: Colors.black,
              ),
              bodyText1: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w300,
                fontSize: 17,
                color: Colors.black,
              ),
              button: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.white,
              ),
              caption: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
      ),
      home: const FirstScreen(),
      routes: {
        FirstScreen.url: (ctx) => const FirstScreen(),
        LoginScreen.url: (ctx) => const LoginScreen(),
        SignUpScreen.url: (ctx) => const SignUpScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
