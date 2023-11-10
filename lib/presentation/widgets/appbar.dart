import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/castIcon.dart';

class appbarWidget extends StatelessWidget {
  const appbarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
        Spacer(),
        iconz(),
        SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.blue,
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
