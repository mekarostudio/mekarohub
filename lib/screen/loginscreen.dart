import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/screen/basescreen.dart';
import '../core/form/inpuitfield.dart';
import '../core/data/inputmodel.dart';

import '../gui/buttonstylea.dart';

import '../data/formdata.dart';

import '../screen/section/loginform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String url = "/login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final username = InputModel(
      name: "username",
      placeholder: "Username/Email",
      isRequired: true,
    );

    final password = InputModel(
      name: "Password",
      placeholder: "Password",
      isPassword: true,
    );

    final formData = FormData();
    formData.add('username', username);
    formData.add('password', password);

    return BaseScreen(
      extendBodyBehindAppBar: true,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 25,
          ),
          shrinkWrap: true,
          reverse: true,
          children: [
            Image.asset(
              'assets/img/welcomeimage.png',
              height: 200,
            ),
            const Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Text(
              "Welcome Back",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    height: .8,
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              "We are glad to see you again",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    height: 1,
                  ),
              textAlign: TextAlign.center,
            ),
            ChangeNotifierProvider(
              create: (ctx) => formData,
              child: LoginForm(),
            ),
            const Divider(
              height: 10,
              color: Colors.transparent,
            ),
            Text(
              'Forgot your password?',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 16,
                  ),
              textAlign: TextAlign.end,
            ),
            ButtonStyleA(
              text: 'Login',
              marginTop: 40.0,
              onPressed: () {},
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}
