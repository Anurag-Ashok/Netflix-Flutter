import 'package:flutter/material.dart';
class Iconsz extends StatelessWidget {
  final IconData icon;
  final String text;
   Iconsz({
    super.key,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
        color: Colors.white,
        size: 25,),
        Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}