import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxNavigation extends StatefulWidget {
  const GetxNavigation({super.key});

  @override
  State<GetxNavigation> createState() => _GetxNavigationState();
}

class _GetxNavigationState extends State<GetxNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Navigator Screen ${Get.arguments[0]}"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.back();
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
                child: const Text(
                  'Back to Screen',
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Get.toNamed('/getx_height');
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
                child: const Text(
                  'Height Screen Screen',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
