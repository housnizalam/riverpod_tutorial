import 'package:flutter/material.dart';
// nach installieren Riverpod in pbspecyml soll diese Package (flutter_riverpod) importiert werden,
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_einfach_provider/home_einfach_provider.dart';
import 'package:riverpod_tutorial/homs/home_einfach_state_notifier/home_einfach_provider.dart';
import 'package:riverpod_tutorial/homs/home_fake_api_provider/home_fake_api_provider.dart';
import 'package:riverpod_tutorial/homs/home_future.dart/home_future.dart';
import 'package:riverpod_tutorial/homs/home_notifier_provider/home_notifier_provider.dart';
import 'package:riverpod_tutorial/homs/home_state_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homs/home_state_provider/home_state_provider.dart';
import 'package:riverpod_tutorial/homs/home_stream/home_stream.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v1_statefull_widget/unterricht_home.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v2_provider/home_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v3_state_provider/home_state_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v4_state_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v5_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/home_widget.dart';

void main() {
  // MyApp soll in Provider feststellt Das Widget Baum in dem, der Riverod effektiv ist
  // normalerweise ist es auf MyApp gebaut, weil es das höchste idget in App ist
  // ProviderScope kann aber in irgendwelche Widget definiert wird, in diesem Fall kann
  // Riverpod nur in den Tochtern dieses Widgets erkannt werden
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUnterrichtFutureProvider(),
      // HomeStateNotifierProvider()
      // HomeNotifierProvider()
      // HomeStateProvider()
      // HomeFutureProvider()
      // HomeStreamProvider()
      // HomeFakeAPIProvider(),
      // HomeEinfachProvider(),
      // HomeEinfachStateNotifier(),
      // HomeUnterricht(),
      // HomeUnterrichtProvider(),
      // HomeUnterrichtStateProvider(),
      // HomeUnterrichtStateNotifierProvider(),
      // HomeUnterrichtNotifier(),
      // HomeUnterrichtFutureProvider(),
    );
  }
}
