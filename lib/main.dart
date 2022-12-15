import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/change_notifier_provider/user_notifier_change.dart';
import 'package:riverpod_learn/state_notifier_provider/userModel.dart';
import 'package:riverpod_learn/state_notifier_provider_two/user.dart';

import 'home_page.dart';

final nameProvider = StateProvider<String>((ref) => "Somnath");
// either this is String value or null value.
// final nameProvider = StateProvider<String?>((ref) => null);

final userProvider = StateNotifierProvider<UserNotifier, User>(
    (ref) => UserNotifier(const User(name: "", age: 0)));
//No 2 option we can pass the value in the UserModel page then here no need to pass here the value.
//final userProvider = StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier());

final userProviderTwo = StateNotifierProvider<UserNotifierOne, UserOne>(
    (ref) => UserNotifierOne(const UserOne(name: "", age: 35)));



// This is the only mutable provider that is ChangeNotifierProvider.
final userChangeNotifierProvider =
    ChangeNotifierProvider((ref) => UserNotifierChange());



void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// widget ref
// consumer widget
// state provider
// state notifier and state notifier provider