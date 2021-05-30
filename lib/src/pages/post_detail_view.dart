import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_animation/src/controller/text_animation.dart';

class PostDetailView extends GetView<TextAnimation> {
  const PostDetailView();

  @override
  Widget build(BuildContext context) {
    Get.put(TextAnimation());
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.post!['title']!),
      ),
      body: Column(
        children: [
          Hero(
            tag: controller.post!['uid']!,
            child: Image.asset(controller.post!['thumbnail']!),
          ),
          FadeTransition(
            opacity: controller.animationController!,
            child: Column(
              children: [
                SlideTransition(
                  position: controller.animationOffset!,
                  child: Text(
                    controller.post!['title']!,
                  ),
                ),
                SlideTransition(
                  position: controller.animationOffsetLeftToRight!,
                  child: Text(
                    controller.post!['description']!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
