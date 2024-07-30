import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_opacity_example/getx_opacity_controller.dart';

class GetxOpacityClass extends StatefulWidget {
  const GetxOpacityClass({super.key});

  @override
  State<GetxOpacityClass> createState() => _GetxOpacityClassState();
}

class _GetxOpacityClassState extends State<GetxOpacityClass> {
  final GetxOpacityController controller = Get.put(GetxOpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
              )),
          Obx(() => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.changeOpacity(value);
              }))
        ],
      ),
    );
  }
}
