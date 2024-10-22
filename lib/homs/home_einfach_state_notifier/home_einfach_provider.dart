import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs/home_einfach_provider/widgets/button_einfach_provider.dart';
import 'package:riverpod_tutorial/homs/home_einfach_provider/widgets/text_einfach_provider.dart';
import 'package:riverpod_tutorial/homs/home_einfach_state_notifier/widgets/button_einfach_provider.dart';
import 'package:riverpod_tutorial/homs/home_einfach_state_notifier/widgets/text_einfach_provider.dart';

class HomeEinfachStateNotifier extends StatelessWidget {
  const HomeEinfachStateNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Riverpod')),
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 5,
            child: TextEinfachStateNotifier(),
          ),
          Expanded(
            child: ButtoneinfachStateNotifier(),
          ),
        ],
      ),
    );
  }
}
