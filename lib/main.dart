import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_counter_example/counter_class.dart';
import 'package:getx_tutorials_material/getx_state_management/getx_counter_example/counter_controller.dart';
import 'package:getx_tutorials_material/getx_utilities/getx_navigation_and_routes.dart';
import 'package:getx_tutorials_material/getx_utilities/getx_utilities_change_themes_bottom_sheet.dart';
import 'package:getx_tutorials_material/getx_utilities/languages.dart';

import 'getx_state_management/getx_opacity_example/getx_opacity_class.dart';
import 'getx_utilities/getx_height_width.dart';
import 'getx_utilities/getx_localization_app_languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: const Locale('en', 'US'),
      //This set the default language for your app.
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      darkTheme: ThemeData(primaryColor: Colors.black45),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //This is get pages for you app
      getPages: [
        // GetPage(name: '/', page: () => const GetxUtilities()),
        // GetPage(name: '/', page: () => const CounterClass()),
        GetPage(name: '/', page: () => const GetxOpacityClass()),
        GetPage(name: '/getx_navigation', page: () => const GetxNavigation()),
        GetPage(name: '/getx_height', page: () => const GetxHeightAndWidth()),
        GetPage(name: '/getx_languages', page: () => const AppLanguages())
      ],
    );
  }
}
