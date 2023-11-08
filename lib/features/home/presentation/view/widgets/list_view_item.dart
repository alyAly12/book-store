import 'package:flutter/material.dart';

import '../book_detail_view.dart';


class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BookDetailView.id);
      },
      child: AspectRatio(
        aspectRatio: 3.2/5,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                image: NetworkImage('https://m.media-amazon.com/images/I/31kNMP-6n8L._SY445_SX342_.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
