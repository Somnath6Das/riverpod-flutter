import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

import '../state_notifier_provider/userModel.dart';


class ChangeNotifierProvider extends ConsumerWidget {
  const ChangeNotifierProvider({super.key});

  void onSubmitName(WidgetRef ref, String value) {
    ref.read(userChangeNotifierProvider).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, int value) {
    ref.read(userChangeNotifierProvider).updateAge(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userChangeNotifierProvider).user;

    // this is a mutable provider so that you can change the provider value outside of UserNotifierChange class
    // ref.watch(userChangeNotifierProvider).user = const User(name: "", age: 0);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("${user.name} ${user.age}"),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitName(ref, value)),
            ),
          ),
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitAge(ref, int.parse(value))),
              keyboardType: TextInputType.number,
            ),
          ),Text(user.age.toString()),
        ],
      ),
    );
  }
}
