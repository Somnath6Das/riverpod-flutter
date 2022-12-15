import 'package:flutter/widgets.dart';
import 'package:riverpod_learn/state_notifier_provider/userModel.dart';

//? this is a mutable provider its means you can change the variable value beyond UserNotifierChange class.

class UserNotifierChange extends ChangeNotifier {
  User user = const User(name: "", age: 0);

  void updateName(String n) {
    user = user.copyWith(name: n);
    // its has must me notifyListeners() method.
    notifyListeners();
  }

  void updateAge(int a) {
    user = user.copyWith(age: a);
    notifyListeners();
  }
}
