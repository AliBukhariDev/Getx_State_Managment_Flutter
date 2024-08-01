import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_image_picker/image_picker_controller.dart';

class GetxImagePicker extends StatefulWidget {
  const GetxImagePicker({super.key});

  @override
  State<GetxImagePicker> createState() => _GetxImagePickerState();
}

class _GetxImagePickerState extends State<GetxImagePicker> {
  final ImagePickerController controller = ImagePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Picker'),
        ),
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                      radius: 40,
                      backgroundImage: controller.path.isNotEmpty
                          ? FileImage(File(controller.path.toString()))
                          : null),
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        controller.imagePicker();
                      },
                      child: const Text('Camera')),
                )
              ],
            )));
  }
}
