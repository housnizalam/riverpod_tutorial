import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v3_state_provider/logic.dart';

class AlterTextStateProvider extends ConsumerWidget {
  const AlterTextStateProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      alterStateProvider,
      (previous, actuell) {
        if (actuell < 0 && previous! >= 0) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Alter darf nicht negativ sein')));
        }
      },
    );
    // ref.listen(
    //   alterStateProvider,
    //   (previous, actuell) {
    //     if (actuell < 0) {
    //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Alter darf nicht negativ sein')));
    //     }
    //   },
    // );
    final alter = ref.watch(alterStateProvider);
    return FittedBox(
      child: Text(
        'Alter: $alter',
      ),
    );
  }
}
