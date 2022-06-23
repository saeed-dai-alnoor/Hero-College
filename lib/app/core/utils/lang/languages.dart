import 'package:hero_college/app/core/utils/lang/ar.dart';
import 'package:hero_college/app/core/utils/lang/en.dart';
import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': ar,
        'en': en,
      };
}
