import 'package:flutter/material.dart';
class playButton extends StatelessWidget {
  const playButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Colors.white)),
        icon: Icon(Icons.play_arrow,
        size: 25,
        color: Colors.black,),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("play",
          style: TextStyle(color: Colors.black),),
        ));
  }
}