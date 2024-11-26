import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_future.dart/widgets/button_future_provider.dart';
import 'package:riverpod_tutorial/homes/home_future.dart/widgets/text_future_provider.dart';


class HomeFutureProvider extends StatelessWidget {
  const HomeFutureProvider({super.key});

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
            child: TextFutureProvider(),
          ),
          Expanded(
            child: ButtonFutureProvider(),
          ),
        ],
      ),
    );
  }
}