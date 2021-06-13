import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_animation/src/app.dart';
import 'package:getx_hero_animation/src/controller/json_loader.dart';
import 'package:getx_hero_animation/src/pages/post_detail_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(JsonLoader());
      }),
      home: App(),
      getPages: [GetPage(name: "/detail", page: () => PostDetailView())],
    ),
  );
}
