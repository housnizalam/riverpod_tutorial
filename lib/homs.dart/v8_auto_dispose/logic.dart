import 'package:flutter_riverpod/flutter_riverpod.dart';

final autodisposeAltrProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});

final autodisposeA = StateProvider.autoDispose<int>((ref) {
  final shouldKeepAlive = ref.watch(autoDisposeSpeicherProvider);

  if (!shouldKeepAlive) {
    ref.keepAlive();
  }

  return 0;
});

final autodisposeB = StateProvider.autoDispose<int>((ref) {
  final shouldKeepAlive = ref.watch(autoDisposeSpeicherProvider);

  if (!shouldKeepAlive) {
    ref.keepAlive();
  }

  return 0;
});

final autodisposeC = StateProvider.autoDispose<int>((ref) {
  final shouldKeepAlive = ref.watch(autoDisposeSpeicherProvider);

  if (!shouldKeepAlive) {
    ref.keepAlive();
  }

  return 0;
});

final autoDisposeSpeicherProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
