import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = true.obs;

  //email  eve.holt@reqres.in
  //password cityslicka

  void loginApi() async {
    loading.value = false;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', 'Congratulations');
        loading.value = true;
      } else {
        Get.snackbar('Login Failed', data['error']);
        loading.value = true;
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
      loading.value = true;
    }
  }
}
