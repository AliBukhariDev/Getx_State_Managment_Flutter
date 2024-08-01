import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_favourite_item_example/favourite_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    FavouriteController controller = Get.put(FavouriteController());
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Favourite Screen')),
      ),
      body: ListView.builder(
          itemCount: controller.fruitsList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  if (controller.favFruits
                      .contains(controller.fruitsList[index].toString())) {
                    controller
                        .removeFruits(controller.fruitsList[index].toString());
                  } else {
                    controller
                        .addFruits(controller.fruitsList[index].toString());
                  }
                },
                leading: Text(controller.fruitsList[index].toString()),
                trailing: Obx(() => Icon(Icons.favorite,
                    color: controller.favFruits
                            .contains(controller.fruitsList[index].toString())
                        ? Colors.red
                        : Colors.white)),
              ),
            );
          }),
    );
  }
}
