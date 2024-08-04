import 'package:flutter/material.dart';
import 'package:music_player/data/const.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: backgroundColor,
      child: Image.asset(
        "assets/page4.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
