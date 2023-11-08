import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


class BookDetailAppBar extends StatelessWidget {
  const BookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear,size: 30,color: Colors.red,)
            ) ,
            IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.bag_2,size: 30,)
            )
          ],
        ));
  }
}
