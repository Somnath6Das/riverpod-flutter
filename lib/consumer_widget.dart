import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

final valueProvider = Provider<int>((ref) => 50);

class ConsumerWidget extends StatelessWidget {
  const ConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade800,
        centerTitle: true,
        title: const Text("Provider"),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final name = ref.watch(nameProvider);
          return Center(
            child: Text(
              "The value is: ${ref.watch(valueProvider)}   $name",
            ),
          );
        },
      ),
    );
  }
}
