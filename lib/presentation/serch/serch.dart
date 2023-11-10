import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/presentation/serch/Serch_idle.dart';
import 'package:netflix/presentation/serch/serch_resultPage.dart';

class serch extends StatelessWidget {
  const serch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: Icon(CupertinoIcons.search,
              color: Colors.grey,),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,),
              style: TextStyle(color:Colors.white ),
            ),
            
            SizedBox(height: 10,),
            // Expanded(child: serchIdle()
            // )
            Expanded(child: serchResultPage())
            
          ],
        ),
      )),
    
    );
  }
}
