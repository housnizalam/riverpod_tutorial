import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/notifier.dart';

class TextState extends ConsumerWidget {
  const TextState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appstate = ref.watch(counterProvider);

    return Center(
      child: Text(
        appstate.number.toString(),
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
