import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/formdata.dart';
import '../../core/form/inpuitfield.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formData = Provider.of<FormData>(context);
    final name = formData.getModel("name");
    final lastname = formData.getModel("lastname");
    final email = formData.getModel("email");
    final username = formData.getModel("username");

    final password = formData.getModel("password");
    final repeatpassword = formData.getModel("repeatpassword");

    return Container(
      child: Form(
        key: formData.key,
        child: Column(
          children: [
            InputFild(
              marginTop: 0,
              model: name!,
            ),
            InputFild(
              model: lastname!,
            ),
            InputFild(
              model: email!,
            ),
            InputFild(
              model: username!,
            ),
            InputFild(
              model: password!,
            ),
            InputFild(
              model: repeatpassword!,
            ),
          ],
        ),
      ),
    );
  }
}
