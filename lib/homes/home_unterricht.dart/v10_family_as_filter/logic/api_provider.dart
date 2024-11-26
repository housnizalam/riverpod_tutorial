import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v10_family_as_filter/logic/bmi_provider.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v10_family_as_filter/logic/datum_providers.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/logic/api_service.dart';
import 'package:riverpod_tutorial/homes/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';

final getBmiListProvider = Provider.family<List<BmiFutureUnterricht>, String>((ref, filter) {
  final bmi = ref.watch(bmiFilterProvider);
  final datum = ref.watch(datumFilterProvider);
  if (filter == 'bmi') {
    return APIService.getBmiList().where((element) => element.bmi > bmi).toList();
  }
  return APIService.getBmiList().where((element) => element.datum.isAfter(datum)).toList();
});
