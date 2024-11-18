import 'package:flutter_riverpod/flutter_riverpod.dart';

final dayProvider = StateProvider<int>((ref) => DateTime.now().day);
final monthProvider = StateProvider<int>((ref) => DateTime.now().month);
final yearProvider = StateProvider<int>((ref) => DateTime.now().year);

final datumFilterProvider = Provider<DateTime>((ref) {
  final day = ref.watch(dayProvider);
  final month = ref.watch(monthProvider);
  final year = ref.watch(yearProvider);
  return DateTime(year, month, day);
});
