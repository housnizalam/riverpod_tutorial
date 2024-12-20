import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/logic/stream_provider.dart';

class DeleteAllWidget extends ConsumerWidget {
  const DeleteAllWidget({super.key});

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
