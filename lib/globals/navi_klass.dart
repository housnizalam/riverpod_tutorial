import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/homs.dart/v10_family_as_filter/home.dart';
import 'package:riverpod_tutorial/homs.dart/v11_stream_provider/home.dart';
import 'package:riverpod_tutorial/homs.dart/v12_stream_with_api/home.dart';
import 'package:riverpod_tutorial/homs.dart/v1_statefull_widget/home.dart';
import 'package:riverpod_tutorial/homs.dart/v2_provider/home.dart';
import 'package:riverpod_tutorial/homs.dart/v3_state_provider/home.dart';
import 'package:riverpod_tutorial/homs.dart/v4_state_notifier_provider/home.dart';
import 'package:riverpod_tutorial/homs.dart/v5_notifier_provider/home_state_notifier_provider.dart';
import 'package:riverpod_tutorial/homs.dart/v6_future_provider/home_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v8_auto_dispose/home_widget.dart';
import 'package:riverpod_tutorial/homs.dart/v9_family/home_family.dart';

class NaviClass {
  static const Widget stateFull = StatefullHome();
  static const Widget provider = ProviderHome();
  static const Widget stateProvider = StateProviderHome();
  static const Widget stateNotifier = StateNotifierHome();
  static const Widget notifier = NotifierHome();
  static const Widget futureProvider = FutureProviderHome();
  static const Widget futureWithlockal = FutureProviderHome();
  static const Widget autoDispose = AutoDisposeHome();
  static const Widget family = FamilyHome();
  static const Widget familyAsFilter = FamilyAsFilterHome();
  static const Widget steram=StreamHome();
  static const Widget steramWithLokalSpeicher=StreamWithLokalSpeicherHome();
}
