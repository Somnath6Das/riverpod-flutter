import 'package:flutter/material.dart';
import 'package:riverpod_learn/change_notifier_provider/change_notifier_provider.dart';
import 'package:riverpod_learn/consumer_widget/consumer_widget.dart';
import 'package:riverpod_learn/future_user_with_value/front_stateful_consumer.dart';
import 'package:riverpod_learn/future_provider/front_page.dart';
import 'package:riverpod_learn/future_provider/front_user_repository.dart';
import 'package:riverpod_learn/provider/provider_consumer.dart';
import 'package:riverpod_learn/provider/provider_home.dart';
import 'package:riverpod_learn/state_notifier_provider/state_notifier_provider.dart';
import 'package:riverpod_learn/state_notifier_provider_two/state_notifier_provider_two.dart';
import 'package:riverpod_learn/stream_provider/front_stream_provider.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProviderHome()));
              },
              child: const Text("Provider"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProviderConsumer()));
              },
              child: const Text("Provider Consumer"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConsumerWidget()));
              },
              child: const Text("Consumer Widget"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WidgetRefWidget()));
              },
              child: const Text("Widget Ref"),
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WidgetRefTwo()));
              },
              child: const Text("widget Ref Two"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StateNotifierProvider()));
              },
              child: const Text("State Notifier Provider"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const StateNotifierProviderTwo()));
              },
              child: const Text("State Notifier Provider Two"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangeNotifierProvider()));
              },
              child: const Text("Change Notifier Provider"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FrontPage()));
              },
              child: const Text("Future Provider"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FrontUserRepository()));
              },
              child: const Text("Future Provider User Repository class"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FrontStatefulConsumer()));
              },
              child: const Text("Future Provider With Value"),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              color: Colors.amber.shade100,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FrontStreamProvider()));
              },
              child: const Text("Stream Provider"),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
