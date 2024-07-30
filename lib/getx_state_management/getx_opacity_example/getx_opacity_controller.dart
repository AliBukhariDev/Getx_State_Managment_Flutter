import 'package:get/get.dart';

class GetxOpacityController extends GetxController {
  RxDouble opacity = .4.obs;

  changeOpacity(value) {
    opacity.value = value;
  }
}
