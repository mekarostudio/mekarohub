import 'package:flutter/material.dart';

import '../gui/buttonstylea.dart';

import '../core/screen/basescreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String url = "/signup-page";

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      headerIconColor: Colors.white,
      backgroundGradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.center,
        colors: [
          Color(0XFF021826),
          Color(0XFF245C73),
        ],
      ),
      body: Container(),
    );
  }
}
