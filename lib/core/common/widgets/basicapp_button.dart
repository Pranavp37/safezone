import 'package:flutter/material.dart';

class BasicappButton extends StatelessWidget {
  const BasicappButton(
      {super.key, required this.onPressed, required this.title, this.height});
  final VoidCallback onPressed;
  final String title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(minimumSize: Size.fromHeight(height ?? 80)),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
