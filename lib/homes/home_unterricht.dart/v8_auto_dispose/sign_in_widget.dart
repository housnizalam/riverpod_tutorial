import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/navigation.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v8_auto_dispose/auto_dispose.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v8_auto_dispose/auto_disposec_kmplex.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v8_auto_dispose/logic.dart';

class SignInWidget extends ConsumerWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: ColoredBox(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () => context.animateToAsPush(
                        page: const SingleAttributWidget(),
                      ),
                  child: const Text('Single Attribute')),
              ElevatedButton(
                  onPressed: () => context.animateToAsPush(
                        page: const KomplexWidget(),
                      ),
                  child: const Text('Komplex widget')),
              ElevatedButton(
                  onPressed: () {
                    ref.read(autoDisposeSpeicherProvider.notifier).state = true;
                  },
                  child: const Icon(Icons.save)),
            ],
          ),
        ),
      ),
    );
  }
}
