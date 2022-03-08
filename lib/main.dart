import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screen/firstscreen.dart';

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
                fontSize: 38,
                color: Colors.black,
              ),
              subtitle1: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w300,
                fontSize: 22,
                color: Colors.black,
              ),
              button: const TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
      ),
      home: const FirstScreen(),
      routes: {
        FirstScreen.url: (ctx) => const FirstScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
