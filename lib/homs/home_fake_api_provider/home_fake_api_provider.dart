import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs/home_fake_api_provider/widgets/button_fake_api.dart';
import 'package:riverpod_tutorial/homs/home_fake_api_provider/widgets/text_fake_api.dart';


class HomeFakeAPIProvider extends StatelessWidget {
  const HomeFakeAPIProvider({super.key});

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
            child: TextFakeAPIProvider(),
          ),
          Expanded(
            child: ButtonfakeAPIProvider(),
          ),
        ],
      ),
    );
  }
}
