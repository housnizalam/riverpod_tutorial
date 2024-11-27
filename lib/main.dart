import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_einfach_provider/home_einfach_provider.dart';
import 'package:riverpod_tutorial/homes/home_einfach_state_notifier/home_einfach_provider.dart';
import 'package:riverpod_tutorial/homes/home_fake_api_provider/home_fake_api_provider.dart';
import 'package:riverpod_tutorial/homes/home_future.dart/home_future.dart';
import 'package:riverpod_tutorial/homes/home_notifier_provider/home_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_state_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_state_provider/home_state_provider.dart';
import 'package:riverpod_tutorial/homes/home_stream/home_stream.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v10_family_as_filter/home_widget.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v11_stream_provider/home_stream_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v12_stream_with_api/stream_widget.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v1_statefull_widget/unterricht_home.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v9_family/home_family.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v3_state_provider/home_state_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v4_state_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v5_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/home_widget.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v7_future_provider_local_speicher/home_widget.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v8_auto_dispose/auto_dispose.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v8_auto_dispose/sign_in_widget.dart';

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
      home: StreamWithLokalSpeicher(),
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
      // HomeUnterrichtFutureProviderLokalSpeicher(),
      // HomeUnterrichtAutoDisposeProvider(),
      // HomeUnterrichtfamilyProvider(),
      // FamilyAsFilter(),
    );
  }
}
