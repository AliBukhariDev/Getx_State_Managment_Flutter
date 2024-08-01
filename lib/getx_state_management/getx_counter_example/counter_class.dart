import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_counter_example/counter_controller.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              //Obx is function in get which observe the change and update the ui according to it
              child: Obx(() => Text(
                    controller.counter.toString(),
                    style: const TextStyle(fontSize: 25),
                  ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
