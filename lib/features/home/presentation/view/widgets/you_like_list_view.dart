import 'package:flutter/material.dart';

import 'list_view_item.dart';

class YouLikeListView extends StatelessWidget {
  const YouLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height:size.height*0.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4),
              child: ListViewItem(),
            );
          }),
    );
  }
}
