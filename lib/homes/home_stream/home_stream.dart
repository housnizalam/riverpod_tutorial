import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_stream/widgets/button-stream.dart';
import 'package:riverpod_tutorial/homes/home_stream/widgets/text_stream.dart';

class HomeStreamProvider extends StatelessWidget {
  const HomeStreamProvider({super.key});
  

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
            child: TextStreamProvider(),
          ),
          Expanded(
            child: ButtonStreamProvider(),
          ),
        ],
      ),
    );
  }
}
