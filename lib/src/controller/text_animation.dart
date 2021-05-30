import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextAnimation extends GetxController with SingleGetTickerProviderMixin {
  AnimationController? animationController;
  Animation<Offset>? animationOffset;
  Animation<Offset>? animationOffsetLeftToRight;

  Map<String, String?>? post;

  @override
  void onInit() {
    super.onInit();
    _loadData();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animationController!);
    animationOffset = Tween<Offset>(
            begin: const Offset(0.0, -1.0), end: const Offset(0.0, 0.0))
        .animate(curve);
    animationOffsetLeftToRight = Tween<Offset>(
            begin: const Offset(-1.0, 0.0), end: const Offset(0.0, 0.0))
        .animate(curve);
    animationController!.forward();
  }

  void _loadData() {
    post = Get.parameters;
  }
}
