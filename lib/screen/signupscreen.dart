import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../gui/buttonstylea.dart';
import '../core/data/inputmodel.dart';
import '../data/formdata.dart';

import '../core/screen/basescreen.dart';
import './section/signupform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String url = "/signup-page";

  @override
  Widget build(BuildContext context) {
    double whiteContainerHeight = MediaQuery.of(context).size.height * .75;
    double whiteContainerWidth = MediaQuery.of(context).size.width;

    final name = InputModel(
      name: "name",
      placeholder: "Name",
    );

    final lastname = InputModel(
      name: "lastname",
      placeholder: "Last Name",
    );

    final email = InputModel(
      name: "email",
      placeholder: "Email",
      isRequired: true,
    );

    final username = InputModel(
      name: "username",
      placeholder: "Username",
      isRequired: true,
    );

    final password = InputModel(
      name: "password",
      placeholder: "Password",
      isPassword: true,
      isRequired: true,
    );

    final repeatpassword = InputModel(
      name: "confirm_password",
      placeholder: "Confirm Password",
      isPassword: true,
      isRequired: true,
    );

    final formData = FormData();
    formData.add('name', name);
    formData.add('lastname', lastname);
    formData.add('username', username);
    formData.add('email', email);
    formData.add('password', password);
    formData.add('repeatpassword', repeatpassword);

    return BaseScreen(
      headerIconColor: Colors.white,
      backgroundGradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.center,
        colors: [
          Colors.black,
          Color(0XFF021826),
          Color(0XFF245C73),
          Color(0XFF245C73),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          height: .8,
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Nice to meet you",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          height: 1,
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: whiteContainerHeight,
              width: whiteContainerWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: -2,
                  )
                ],
              ),
              child: Center(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  // Remove the efect
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowGlow();
                    return true;
                  },
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    shrinkWrap: true,
                    reverse: true,
                    children: [
                      ChangeNotifierProvider(
                        create: (ctx) => formData,
                        child: const SignUpForm(),
                      ),
                      ButtonStyleA(
                        text: 'Sign Up',
                        marginTop: 40.0,
                        onPressed: () {
                          formData.check();
                        },
                      ),
                    ].reversed.toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
