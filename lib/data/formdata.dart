import 'package:flutter/material.dart';

import '../core/data/inputmodel.dart';

class FormData with ChangeNotifier {
  late Map<String, InputModel> _inputs;
  late final GlobalKey<FormState> key;

  FormData() {
    _inputs = Map<String, InputModel>();
    key = GlobalKey<FormState>();
  }

  void add(String name, InputModel model) {
    _inputs[name] = model;
  }

  InputModel? getModel(String name) {
    return _inputs[name];
  }

  void check() {
    for (var model in _inputs.values) {
      model.check();
    }

    notifyListeners();
  }
}
