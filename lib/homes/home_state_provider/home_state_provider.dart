import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_state_provider/widgets/button_state_provider.dart';
import 'package:riverpod_tutorial/homes/home_state_provider/widgets/text_state_provider.dart';

class HomeStateProvider extends StatelessWidget {
  const HomeStateProvider({super.key});

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
            child: TextState(),
          ),
          Expanded(
            child: ButtonState(),
          ),
        ],
      ),
    );
  }
}
