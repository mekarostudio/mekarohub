import 'package:flutter/material.dart';
import 'package:mekarohub/core/data/inputmodel.dart';

class InputFild extends StatelessWidget {
  final double marginTop;
  final InputModel model;
  final void Function(String)? onChanged;
  late TextEditingController controller;

  InputFild({
    Key? key,
    this.onChanged,
    this.marginTop = 20,
    required this.model,
  }) : super(key: key) {
    controller = TextEditingController();

    String value = model.value;

    if (value.isNotEmpty) {
      controller.text = value;

      controller.selection =
          TextSelection.fromPosition(TextPosition(offset: value.length));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      //child: Directionality(
      //textDirection: TextDirection.rtl,
      child: TextFormField(
        controller: controller,
        key: model.key,
        onSaved: (String? value) {
          if (value != null) model.value = value;
        },
        onChanged: (String value) {
          model.value = value;
          //onChanged!(value);
        },
        style: Theme.of(context).textTheme.bodyText1,
        obscuringCharacter: '*',
        obscureText: model.isPassword,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          hintText: model.placeholder,
          hintStyle: Theme.of(context).textTheme.caption,
          errorText: model.hasError ? model.error : null,
          errorStyle: Theme.of(context).textTheme.caption!.copyWith(
                fontSize: 14,
                color: Colors.redAccent,
                height: 0.8,
              ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColorDark,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColorDark,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      //),
    );
  }
}
