import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homes/home_einfach_provider/widgets/button_einfach_provider.dart';
import 'package:riverpod_tutorial/homes/home_einfach_provider/widgets/text_einfach_provider.dart';

class HomeEinfachProvider extends StatelessWidget {
  const HomeEinfachProvider({super.key});

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
            child: TextEinfachProvider(),
          ),
          Expanded(
            child: ButtoneinfachProvider(),
          ),
        ],
      ),
    );
  }
}
