import 'package:flutter/material.dart';

class PostBottons extends StatelessWidget {
  const PostBottons({
    super.key,
    required this.btnClr,
    required this.btmWdg,
    this.height = 40,
    this.width = 70,
  });
  final Color btnClr;
  final Widget btmWdg;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: btnClr,
        borderRadius: BorderRadius.circular(30),
      ),
      child: btmWdg,
    );
  }
}
