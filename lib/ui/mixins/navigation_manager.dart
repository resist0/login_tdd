import 'package:get/get.dart';

mixin NavigationManager {
  void handleNavigation(Stream<String> stream, {bool clearRoute = false}) {
    stream.listen((page) {
      if (page?.isNotEmpty == true) {
        if (clearRoute == true) {
          Get.offAllNamed(page);
        } else {
          Get.toNamed(page);
        }
      }
    });
  }
}
