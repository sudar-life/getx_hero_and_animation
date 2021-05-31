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
          Image.asset(controller.post!['thumbnail']!),
          Column(
            children: [
              Text(
                controller.post!['title']!,
              ),
              Text(
                controller.post!['description']!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
