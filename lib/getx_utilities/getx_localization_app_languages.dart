import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLanguages extends StatefulWidget {
  const AppLanguages({super.key});

  @override
  State<AppLanguages> createState() => _AppLanguagesState();
}

class _AppLanguagesState extends State<AppLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              SizedBox(width: Get.height * .02),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu')),
            ],
          )
        ],
      ),
    );
  }
}
