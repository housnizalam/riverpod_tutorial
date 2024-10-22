import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/provider/einfach_provider.dart';
import 'package:riverpod_tutorial/logic/provider/einfach_state_notifier_provider.dart';

class TextEinfachStateNotifier extends ConsumerWidget {
  const TextEinfachStateNotifier({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(einfachStatNotifierProvider);

    return Center(
      child: Text(
       number.toString(),
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
