import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/title.dart';
const imageurl = "https://www.kuttymovies.bio/wp-content/uploads/2023/10/Leo-1.jpg?x11294";
class serchResultPage extends StatelessWidget {
  const serchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        serchtitile(title:"Movies & Tv" ,),
        SizedBox(height: 10,),
        Expanded(child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 0,
          childAspectRatio: 1.2/1.5,
          children: List.generate(20, (index) {
            return mainCard();
          }) 
          ,))
      ],
    );
  }
  
}
class mainCard extends StatelessWidget {
  const mainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageurl)),
          borderRadius: BorderRadius.circular(18)
      ),
    );
  }
}