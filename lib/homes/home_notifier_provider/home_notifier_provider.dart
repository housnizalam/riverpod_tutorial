import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_notifier_provider/widgets/button_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_notifier_provider/widgets/text_notifier_provider.dart';

class HomeNotifierProvider extends StatelessWidget {
  const HomeNotifierProvider({super.key});

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
            child: TextNotifierProvider(),
          ),
          Expanded(
            child: ButtonNotifierProvider(),
          ),
        ],
      ),
    );
  }
}