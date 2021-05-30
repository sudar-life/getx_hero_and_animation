import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_animation/src/components/post_widget.dart';
import 'package:getx_hero_animation/src/controller/json_loader.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: List.generate(
                JsonLoader.to.list.length,
                (index) {
                  var post = JsonLoader.to.list[index]
                      .map<String, String>((key, value) {
                    return MapEntry(key.toString(), value.toString());
                  });
                  return PostWidget(
                    uid: post['uid']!,
                    thumbnail: post['thumbnail']!,
                    title: post['title']!,
                    description: post['description']!,
                    callBack: () {
                      Get.toNamed('/detail', parameters: post);
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
