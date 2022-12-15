import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';


class StateNotifierProvider extends ConsumerWidget {
  const StateNotifierProvider({super.key});

  void onSubmitName(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, int value) {
    ref.read(userProvider.notifier).updateAge(value);
  }

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    // when the user value changes select method will rerun.
    final userSelect = ref.watch(userProvider.select((value) => value.age));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        //? Both user and userSelect
        title:  Text("${user.name}  $userSelect"),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //! user - provider
         
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitName(ref, value)),
            ),
          ),
          Center(child: Text(user.age.toString())),
          Center(
            child: TextField(
              onSubmitted: ((value) => onSubmitAge(ref, int.parse(value))),
              keyboardType: TextInputType.number,
            ),
          ),
          //? userSelect - provider 
          Center(child: Text(userSelect.toString())),

        ],
      ),
    );
  }
}
