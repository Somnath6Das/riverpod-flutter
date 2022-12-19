import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

class ProviderHome extends ConsumerWidget {
  const ProviderHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(firstProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(name),)
        ],
      ),
    );
  }
}
