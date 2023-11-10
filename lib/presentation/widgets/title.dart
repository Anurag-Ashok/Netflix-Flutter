import 'package:flutter/material.dart';

class serchtitile extends StatelessWidget {
  final String title;
  serchtitile({super.key,
  required this.title
  
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),
            );
  }
}