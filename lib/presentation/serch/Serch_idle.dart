import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/title.dart';
final imageurl = "https://whiteguywatchesbollywood.com/wp-content/uploads/2023/10/leo-vijay-movie-review.jpeg";
class serchIdle extends StatelessWidget {
  const serchIdle({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        SizedBox(height: 10,),
            serchtitile(title: " Top Searches",),
            SizedBox(height: 10,),

            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) =>  topserchItemtile(), 
                separatorBuilder: (context, index) => SizedBox(height: 20,), 
                itemCount: 10),
            )
      ],
    );
  }
}
class topserchItemtile extends StatelessWidget {
  const topserchItemtile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
       Container(
        width: screenwidth*0.35 ,
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageurl))
        ),
       ),
       SizedBox(width: 10,),
       Expanded(child: Text("Leo 2023",style: TextStyle(
        fontSize: 15,fontWeight: FontWeight.bold
       ),)),
       Icon(Icons.play_arrow,color: Colors.white,),
       SizedBox(width: 20,),
      ],
    );
  }
}