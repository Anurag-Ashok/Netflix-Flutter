import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/appbar.dart';

class screen_download extends StatelessWidget {
  const screen_download({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appbarWidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 100,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Text('Smart Downloads')
            ],
          ),
          SizedBox(height: 10,),
          Text('Introdusing Downloads for you',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),
          textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Text(
              "we will download a personalised movies and shows for you,so there is always something to watch on your divice",
              style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          Container(child: Center(child: Text("Loding.......")),
            height: size.width,
            width: size.width,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              "Set up",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            onPressed: () {},
            child: Text(
              "See what you can download",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
