import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

import '../state_notifier_provider/userModel.dart';

class FrontStreamProvider extends ConsumerWidget {
  const FrontStreamProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        // when is gives the async value
        body: ref.watch(streamProvider).when(
      data: ((data) {
        return Center(child: Text(data.toString()));
      }),
      error: (Object error, StackTrace stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }
}
