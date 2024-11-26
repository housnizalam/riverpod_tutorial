import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/provider/state_notifier_provider.dart';

class TextStateNotifierProvider extends ConsumerWidget {
  const TextStateNotifierProvider({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final appstate = ref.watch(counterStateNotifierProvider);

    return Center(
      child: Text(
        appstate.number.toString(),
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
