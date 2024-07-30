import 'package:get/get.dart';

class CounterController extends GetxController {
  final counter = 0.obs;

// Rx counter1 = 1.obs;
//Both above are same

// Initialize a function which increment a counter
  increment() {
    counter.value++;
  }
}
