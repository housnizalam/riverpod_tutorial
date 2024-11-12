import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/api_service.dart';
import 'package:riverpod_tutorial/homs/home_unterricht.dart/v6_future_provider/logic/bmi_provider.dart';

final bmiListProvider = Provider<List<BmiFutureUnterricht>>((ref) {
  
  return APIService.getBmiList();
});

final bmiListProvider2 = Provider<Future<List<BmiFutureUnterricht>>>((ref) {
  
  return APIService.futureGetBmiList();
});

final bmiListFutureProvider = FutureProvider<List<BmiFutureUnterricht>>((ref) {
  
  return APIService.futureGetBmiList();
});

final bmiListFutureProvider2=FutureProvider((ref) async {
  await Future.delayed(Duration(seconds: 5));
  return APIService.getBmiList();
});

// final bmiFutureList = FutureProvider<List<BmiFutureUnterricht>>(
//   (ref) {},
// );
