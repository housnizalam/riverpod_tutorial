import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/provider/einfach_provider.dart';

class TextEinfachProvider extends ConsumerWidget {
  const TextEinfachProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(einfachProvider);

    return Center(
      child: Text(
       number.toString(),
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
