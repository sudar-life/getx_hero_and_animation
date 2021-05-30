import 'package:flutter/material.dart';

typedef PostClickFunction = void Function();

class PostWidget extends StatelessWidget {
  final String uid;
  final String thumbnail;
  final String title;
  final String description;
  final PostClickFunction callBack;

  const PostWidget(
      {required this.uid,
      required this.thumbnail,
      required this.title,
      required this.description,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: uid,
              child: Image.asset(thumbnail),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
