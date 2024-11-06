import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/arrows_buttons.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v2_provider/widgets/button_widget.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v8_auto_dispose/logic.dart';

class SingleAttributWidget extends ConsumerWidget {
  const SingleAttributWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alter = ref.watch(autodisposeAltrProvider);

    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Alter: $alter',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                width: 40,
              ),
              ArrowButtons.vertical(
                height: 40,
                width: 40,
                onPressedUp: () {
                  ref.read(autodisposeAltrProvider.notifier).state++;
                },
                onPressedDown: () {
                  ref.read(autodisposeAltrProvider.notifier).state--;
                },
              )
            ],
          ),
        ));
  }
}
