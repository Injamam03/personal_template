import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
        },
        'bn_BD': {
          'hello': 'হ্যালো ওয়ার্ল্ড',
        }
      };
}
