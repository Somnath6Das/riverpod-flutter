import 'package:flutter/material.dart';
import 'package:riverpod_learn/consumer_widget/consumer_widget.dart';
import 'package:riverpod_learn/state_notifier_provider/state_notifier_provider.dart';
import 'package:riverpod_learn/state_notifier_provider_two/state_notifier_provider_two.dart';
import 'package:riverpod_learn/widget_ref/widget_ref_two.dart';
import 'package:riverpod_learn/widget_ref/widget_ref_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
        title: const Text("Riverpod Explorer"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.amber.shade100,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConsumerWidget(
                          )));
            },
            child: const Text("Consumer Widget"),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.amber.shade100,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WidgetRefWidget(
                          )));
            },
            child: const Text("Widget Ref"),
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.amber.shade100,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WidgetRefTwo(
                          )));
            },
            child: const Text("widget Ref Two"),
          ),
          const SizedBox(
            height: 10,
          ),
        MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.amber.shade100,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StateNotifierProvider(
                          )));
            },
            child: const Text("State Notifier Provider"),
          ),
          const SizedBox(
            height: 10,
          ),
        MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            color: Colors.amber.shade100,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StateNotifierProviderTwo(
                          )));
            },
            child: const Text("State Notifier Provider Two"),
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
