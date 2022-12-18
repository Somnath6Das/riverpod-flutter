import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/main.dart';

class FrontStatefulConsumer extends ConsumerStatefulWidget {
  const FrontStatefulConsumer({super.key});

  @override
  ConsumerState<FrontStatefulConsumer> createState() =>
      _FrontStatefulConsumerState();
}

class _FrontStatefulConsumerState extends ConsumerState<FrontStatefulConsumer> {
  String userNo = "1";

  @override
  Widget build(BuildContext context) {
    return ref.watch(fetchUserWithValue(userNo)).when(
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
                  keyboardType: TextInputType.number,
                  onSubmitted: ((value) => setState(() {
                        userNo = value;
                      })),
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
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
