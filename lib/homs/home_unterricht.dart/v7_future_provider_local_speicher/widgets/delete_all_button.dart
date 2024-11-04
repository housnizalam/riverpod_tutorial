import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v7_future_provider_local_speicher/logic/future_provider.dart';

class DeleteAll extends ConsumerWidget {
  const DeleteAll({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: SizedBox(
          height: 40,
          child: TextButton(
              onPressed: () async {
                ref.read(lokalSpeicherProvider).deleteAll();
                ref.invalidate(lokalSpeicherProvider);
              },
              child: const Text(
                'Delete All',
                style: TextStyle(color: Colors.red),
              )),
        ),
      ),
    );
    
  }
}
