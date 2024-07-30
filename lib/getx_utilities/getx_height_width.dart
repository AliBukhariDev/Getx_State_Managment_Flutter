import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxHeightAndWidth extends StatefulWidget {
  const GetxHeightAndWidth({super.key});

  @override
  State<GetxHeightAndWidth> createState() => _GetxHeightAndWidthState();
}

class _GetxHeightAndWidthState extends State<GetxHeightAndWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Container(
          // height: MediaQuery.of(context).size.height * 1,
          height: Get.height * .5,
          width: Get.width * .5,
          color: Colors.blueGrey,
          child: Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed('/getx_languages');
              },
              child: const Text('Getx Localization'),
            ),
          ),
        ),
      ),
    );
  }
}
