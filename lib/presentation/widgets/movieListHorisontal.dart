import 'package:flutter/material.dart';
import 'package:netflix/images/netWorkimage.dart';

class movieList extends StatefulWidget {
  const movieList({super.key});

  @override
  State<movieList> createState() => _movieListState();
}

class _movieListState extends State<movieList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 220,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 18, 14, 1),
            ),
            height: 200,
            width: 100,
          ),
        );
      },
    );
  }
}
