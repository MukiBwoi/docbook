import 'package:flutter/cupertino.dart';

class HomeModel with ChangeNotifier {
  int counter = 0;

  void count() {
    counter++;
    notifyListeners();
  }
}
