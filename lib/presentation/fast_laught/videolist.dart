import 'package:flutter/material.dart';

class videoListItem extends StatelessWidget {

final int index;

   videoListItem({super.key,
   required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        color: Colors.accents[index % Colors.accents.length],
        
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius:25 ,
                backgroundColor: Colors.black.withOpacity(0.5)
                ,
                child: IconButton(onPressed: (){}, 
                icon: Icon(Icons.volume_off,
                color: Colors.white,
                size: 30,)),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.ottplay.com/images/leo-864.jpg"),
                  ),
                  videoactions(icon: Icons.emoji_emotions, title: 'LOL'),
                  videoactions(icon: Icons.add, title: 'My List'),
                  videoactions(icon: Icons.share, title: 'Share'),
                  videoactions(icon: Icons.play_arrow, title: 'Play'),
                ],

              )
            ],
          ),
        ),
      )
      ]
    );
  }
}
class videoactions extends StatelessWidget {
  final IconData icon;
  final String title;
   videoactions({super.key,
   required this.icon,
   required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,
          size: 30,),
          Text(title,style: TextStyle(
            fontSize: 12
          ),)
    
        ],
      ),
    );
  }
}