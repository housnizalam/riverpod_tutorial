import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v3.dart/logic.dart';

class AlterTextStateProvider extends ConsumerWidget {
  const AlterTextStateProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final alter = ref.watch(alterStateProvider);
    return  Text(
            'Alter: $alter',
            style: TextStyle(fontSize: 30),
          );
  }
}