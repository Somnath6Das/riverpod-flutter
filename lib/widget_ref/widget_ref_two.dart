import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

class WidgetRefTwo extends ConsumerWidget {
  const WidgetRefTwo({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch is used in stateless ConsumerWidget inside build
    final nameWatch = ref.watch(nameProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Widget Ref $nameWatch"),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          
          child: TextField(
            onSubmitted: ((value) => onSubmit(ref, value)),
          ),

          ),
        ],
      ),
    );
  }
}
