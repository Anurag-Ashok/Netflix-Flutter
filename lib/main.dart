import 'package:flutter/material.dart';
import 'package:netflix/screen_main_page.dart';

void main() {
  runApp(netflix());
}

class netflix extends StatelessWidget {
  const netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'netflix',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
      home: screenmainpage(),
    );
  }
}
// SafeArea(child: Center(
//         child: Text("main page",style: 
//       TextStyle(color: Colors.white),
//       )
//       )
//       ),