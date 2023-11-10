import 'package:flutter/material.dart';
import 'package:netflix/domain/core/colors/colors.dart';
import 'package:netflix/presentation/New_and_hot.dart/screen_new_and_hot.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laught/fast_laught.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/serch/serch.dart';
import 'package:netflix/presentation/widgets/screen_bottomnavigation.dart';

class screenmainpage extends StatelessWidget {
  screenmainpage({super.key});
  final pages = [
    screenhome(),
    newandhot(),
    fast_laught(),
    serch(),
    screen_download()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: intexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationscreen(),
    );
  }
}
