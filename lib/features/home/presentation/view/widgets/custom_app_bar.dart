import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:store/core/utils/assets_manager.dart';
import 'package:store/features/search/presentation/view/search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetsManager.logo,
              height: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: const Icon(IconlyLight.search,size: 30,)
            )
          ],
        ));
  }
}
