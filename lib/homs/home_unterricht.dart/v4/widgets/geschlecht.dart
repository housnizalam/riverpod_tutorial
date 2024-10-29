import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4/logic/good_practice.dart';

class GeschlechtWidgetNotifier extends ConsumerWidget {
  const GeschlechtWidgetNotifier({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Row(children: [
         SizedBox(
                    height: 40,
                    width: 120,
                    child: Text(
                      ref.watch(bmiStateNotifierProvider).geschlecht,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                      SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Mänlich') ;
                          },
                          child: Text('M'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Weiblich') ;
                          },
                          child: Text('F'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(bmiStateNotifierProvider.notifier).upgradeGeschlecht('Anders') ;
                          },
                          child: Text('A'),
                        )
                      ],
                    ),
                  ),
    ],);
  }
}