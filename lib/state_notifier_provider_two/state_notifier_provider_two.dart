import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

class StateNotifierProviderTwo extends ConsumerWidget {
  const StateNotifierProviderTwo({super.key});

  void onSubmitName(WidgetRef ref, String value) {
    ref.read(userProviderTwo.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, int value) {
    ref.read(userProviderTwo.notifier).updateAge(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProviderTwo);
    // when the user value changes select method will rerun.
    final userSelect = ref.watch(userProviderTwo.select((value) => value.age));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("${user.name }   $userSelect"),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(user.age.toString())),
          Center(child: Text(user.name)),
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitName(ref, value)),
            ),
          ),
          Center(child: Text(userSelect.toString())),
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitAge(ref, int.parse(value))),
            ),
          ),
        ],
      ),
    );
  }
}
