import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

class ProviderConsumer extends StatelessWidget {
  const ProviderConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final name = ref.watch(firstProvider);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(name))
          ],
        );
      }),
    );
  }
}
