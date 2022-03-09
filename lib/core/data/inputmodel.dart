import 'package:flutter/material.dart';

class InputModel {
  String name;
  String value;
  String placeholder;
  String error;
  late GlobalKey<FormState> key;
  bool isRequired;
  bool isPassword;

  InputModel({
    this.value = "",
    this.error = "",
    this.isRequired = false,
    this.isPassword = false,
    required this.name,
    required this.placeholder,
  }) {
    key = GlobalKey<FormState>();
  }

  bool get hasError => error.isNotEmpty;

  bool check() {
    if (isRequired && value.isEmpty) {
      error = "the $name is required";
      return false;
    }
    print(error);
    error = "";
    return true;
  }
}
