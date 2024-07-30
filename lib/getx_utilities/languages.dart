import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'Muhammad Ali Bukhari'
        },
        'ur_PK': {'message': 'آپ کا نام کیا ہے؟', 'name': 'محمد علی بخاری'}
      };
}
