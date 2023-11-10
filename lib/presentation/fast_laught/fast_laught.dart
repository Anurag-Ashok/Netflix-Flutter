import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laught/videolist.dart';

class fast_laught extends StatelessWidget {
  const fast_laught({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: 
        List.generate(10, (index){
          return videoListItem(index:index ,);
        })
      ,)),
    );
  }
}
