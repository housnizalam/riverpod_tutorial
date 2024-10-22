import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/logic/notifier/einfach_statenotifier.dart';

final einfachStatNotifierProvider = StateNotifierProvider<EinfachCounterNotifier, int>((ref) => EinfachCounterNotifier());
