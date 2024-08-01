import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FavouriteController extends GetxController {
  RxList<String> fruitsList = ['Mango', 'Banana', 'Apple', 'Peach'].obs;
  RxList favFruits = [].obs;

  addFruits(value) {
    favFruits.add(value);
  }

  removeFruits(value) {
    favFruits.remove(value);
  }

  Color iconColor(String fruit) {
    return favFruits.contains(fruit) ? Colors.red : Colors.white;
  }
}
