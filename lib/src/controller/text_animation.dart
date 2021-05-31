import 'package:get/get.dart';

class TextAnimation extends GetxController {
  Map<String, String?>? post;

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  void _loadData() {
    post = Get.parameters;
  }
}
