import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_state_notifier_provider/widgets/buttun_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_state_notifier_provider/widgets/text_state_notifier_provider.dart';

class HomeStateNotifierProvider extends StatelessWidget {
  const HomeStateNotifierProvider({super.key});

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
            child: TextStateNotifierProvider(),
          ),
          Expanded(
            child: ButtonStateNotifierProvider(),
          ),
        ],
      ),
    );
  }
}
