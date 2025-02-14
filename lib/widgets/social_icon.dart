import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(image),
        iconSize: 30,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
