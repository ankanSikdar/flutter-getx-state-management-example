import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  void incrementCount1() {
    count1.value++;
  }

  void incrementCount2() {
    count2.value++;
  }

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    super.onInit();
    ever(
      count1,
      (_) => print('Count 1 has changed'),
    );
    once(
      count1,
      (_) => print('First Time Count 1 has changed'),
    );
    debounce(
      count1,
      (_) => print('Count 1 hasn\'t changed for 1 sec'),
      time: Duration(seconds: 1),
    );
    interval(
      count1,
      (_) => print('Every one second count 1 is changed'),
      time: Duration(seconds: 1),
    );
  }
}
