
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v7_future_provider_local_speicher/logic/bmi_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v7_future_provider_local_speicher/logic/lokal_speicher_service.dart';

final bmiProviderLokalSpeicher = StateNotifierProvider<BmiStateNotifierFutureUnterricht, BmiLokalSpeicher>((ref) {
  return BmiStateNotifierFutureUnterricht();
});


final lokalSpeicherProvider = Provider<LokalSpeicherService>((ref) {
  return LokalSpeicherService();
});

final bmiListLokalSpeicherProvider = FutureProvider<List<BmiLokalSpeicher>>((ref) {
  final lokalSpeicherService = ref.watch(lokalSpeicherProvider);
  return lokalSpeicherService.getBmiList();
});

final deleteAllSpeicherProvider = FutureProvider<void>((ref) {
  ref.watch(lokalSpeicherProvider).deleteAll();
});
