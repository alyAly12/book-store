import 'package:flutter/material.dart';
import 'package:store/core/custom_widgets/custom_text_widget.dart';
import 'package:store/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:store/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'custom_home _list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Padding(
            padding:  EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomAppBar(),
                CustomHomeListView(),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget(title: 'Best Seller',fontSize: 24,),),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child:  Padding(
            padding: EdgeInsets.all(8.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );

  }
}

