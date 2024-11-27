import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/home.dart';
import 'package:riverpod_tutorial/homs.dart/v2_provider/home.dart';
import 'package:riverpod_tutorial/homs.dart/v6_future_provider/home_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/home_widget.dart';


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
      home: AutoDisposeHome(),

    );
  }
}
