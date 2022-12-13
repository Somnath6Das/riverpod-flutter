import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';


class StateNotifierProviderTwo extends ConsumerWidget {
  const StateNotifierProviderTwo({super.key});

  void onSubmitName(WidgetRef ref, String value) {
    ref.read(userProviderTwo.notifier).updateName(value);
  }
 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProviderTwo);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(user.name),
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
          Center(child: Text(user.age.toString())),
          
        ],
      ),
    );
  }
}
