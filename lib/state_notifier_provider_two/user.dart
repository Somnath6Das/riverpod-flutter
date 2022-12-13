import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class UserOne {
  final String name;
  final int age;

  const UserOne({required this.name, required this.age});
}

class UserNotifierOne extends StateNotifier<UserOne> {
  UserNotifierOne(super.state);

  void updateName(String n) {
    state = UserOne(name: n, age: state.age);
  }
}
