import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v2_provider/logic.dart';

class AlterTextProvider extends ConsumerWidget {
  const AlterTextProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final alter = ref.watch(alterProvider);
    return  Text(
            'Alter: $alter',
            style: TextStyle(fontSize: 40),
          );
  }
}