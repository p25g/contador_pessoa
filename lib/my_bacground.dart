import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/teddy-bears-1080x1920-soft-toys-4k-5184.jpg",
          fit: BoxFit.cover,
        );
  }
}