

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v2_provider/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v2_provider/widgets/button_widget.dart';

class HomeUnterrichtProvider extends ConsumerWidget {
  const HomeUnterrichtProvider({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return const Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlterTextProvider( ),
          SizedBox(
            width: 40,
          ),
          ButtonWidgetProvider(),
        ],
      ),
    ));
  }
}

