import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs.dart/v2_provider/widgets/alter_text.dart';
import 'package:riverpod_tutorial/homs.dart/v2_provider/widgets/button_widget.dart';

class ProviderHome extends StatelessWidget {
  const ProviderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlterWidget(),
          SizedBox(
            height: 100,
          ),
          ButtonWidget(),
        ],
      ),
    );
  }
}
