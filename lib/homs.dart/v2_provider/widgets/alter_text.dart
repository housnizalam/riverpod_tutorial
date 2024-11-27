import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v2_provider/logic.dart';

class AlterWidget extends ConsumerWidget {
  const AlterWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alter = ref.watch(alterProvider);
    return Text(
      'Alter: $alter',
      style: const TextStyle(fontSize: 40),
    );
  }
}
