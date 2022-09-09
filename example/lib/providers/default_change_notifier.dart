import 'package:flutter/material.dart';

abstract class DefaultChangeNotifier extends ChangeNotifier {
  bool _loading = false;

  set loading(bool value) {
    _loading = value;
    notify();
  }

  void notify() {
    notifyListeners();
  }

  bool get loading => _loading;
}
