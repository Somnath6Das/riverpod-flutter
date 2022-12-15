import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/future_provider/user_repository.dart';
import 'package:riverpod_learn/main.dart';

class FrontUserRepository extends ConsumerWidget {
  const FrontUserRepository({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(fetchUserProvider).whenData((value) => Text(value.name));
    return ref.watch(fetchUserRepository).when(
      data: (data) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(data.name),
            backgroundColor: Colors.amber.shade800,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(data.email)),
              Center(
                child: TextField(
                  onSubmitted: ((value) => ''),
                ),
              ),
            ],
          ),
        );
      },
      error: ((error, stackTrace) {
        return Scaffold(body: Center(child: Text(error.toString())));
      }),
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
