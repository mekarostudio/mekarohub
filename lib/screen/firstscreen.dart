import 'package:flutter/material.dart';

import '../gui/buttonstylea.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const String url = "/first-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        child: NotificationListener<OverscrollIndicatorNotification>(
          // Remove the efect
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return true;
          },
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            shrinkWrap: true,
            children: [
              Image.asset(
                'assets/img/mekarohub-logo.png',
                height: 160,
              ),
              Text(
                "Mekaro Hub",
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              Text(
                "Take the Control",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      height: .6,
                    ),
                textAlign: TextAlign.center,
              ),
              ButtonStyleA(
                text: 'Login',
                marginTop: 50.0,
                onPressed: () {},
              ),
              ButtonStyleA(
                text: 'Sign Up',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
