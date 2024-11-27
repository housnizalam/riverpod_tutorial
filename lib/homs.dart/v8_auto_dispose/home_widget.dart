import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/globals/navigation_extension.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/widgets/single_attribute_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/widgets/mehr_attribute_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/logic.dart';

class AutoDisposeHome extends ConsumerWidget {
  const AutoDisposeHome({super.key});

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
                        animationType: AnimationType.fade,
                      ),
                  child: const Text('Single Attribute')),
              ElevatedButton(
                  onPressed: () => context.animateToAsPush(
                        page: const KomplexWidget(),
                        animationType: AnimationType.scaleAndRotate,
                        rotateNumber: 5,
                        duration: const Duration(seconds: 2),
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
