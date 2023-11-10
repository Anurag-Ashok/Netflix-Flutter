import 'package:flutter/material.dart';
ValueNotifier<int> intexChangeNotifier = ValueNotifier(0);
class BottomNavigationscreen extends StatelessWidget {
  const BottomNavigationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: intexChangeNotifier, 
    builder: (context, int newIntex, _) {
      return BottomNavigationBar(
      currentIndex: newIntex,
      onTap: (index){
        intexChangeNotifier.value=index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(
        color: Colors.white
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(
          icon: Icon(
            Icons.collections),
            label: "New & Hot"
            ),
            BottomNavigationBarItem(
          icon: Icon(
            Icons.emoji_emotions),
            label: "Fast laughs"
            ),
            BottomNavigationBarItem(
          icon: Icon(
            Icons.search),
            label: "Serch"
            ),
            BottomNavigationBarItem(
          icon: Icon(
            Icons.download),
            label: "Downloads"
            ),
            


      ],
     
    );
    },);
  }
}