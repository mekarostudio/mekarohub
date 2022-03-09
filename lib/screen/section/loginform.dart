import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/formdata.dart';
import '../../core/form/inpuitfield.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formData = Provider.of<FormData>(context);
    final username = formData.getModel("username");
    final password = formData.getModel("password");

    return Container(
      child: Form(
        key: formData.key,
        child: Column(
          children: [
            InputFild(
              marginTop: 30,
              model: username!,
            ),
            InputFild(
              model: password!,
            ),
          ],
        ),
      ),
    );
  }
}
