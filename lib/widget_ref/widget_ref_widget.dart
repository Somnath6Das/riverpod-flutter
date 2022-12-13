import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose properties helps to dispose and back to the previous value when page will build.
final stateProvider = StateProvider.autoDispose<int>((ref) => 0);

class WidgetRefWidget extends ConsumerWidget {
  const WidgetRefWidget({super.key});

//? change provider value outside build method by read method.
  void onSubmit(WidgetRef ref, int value) {
    ref.read(stateProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(stateProvider);

    ref.listen<int>(stateProvider, (prev, curr) {
      if (curr == 5) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("value is 5")));
      }
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade800,
          centerTitle: true,
          title: Text("Widget Ref $value"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The value is $value",
                style: Theme.of(context).textTheme.headline4,
              ),
              MaterialButton(
                onPressed: () {
                  //? change the value of provider
                  ref.watch(stateProvider.notifier).state++;
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                color: Colors.amber.shade50,
                child: Text(
                  "increment  $value",
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("$value"),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onSubmitted: ((value) => onSubmit(ref, int.parse(value))),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {
                  ref.invalidate(stateProvider);
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                color: Colors.amber.shade100,
                child: const Text(
                  "invalidate",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ));
  }
}
