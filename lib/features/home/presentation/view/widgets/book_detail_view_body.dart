import 'package:flutter/material.dart';
import 'package:store/core/custom_widgets/custom_text_widget.dart';
import 'package:store/features/home/presentation/view/widgets/book_detail_app_bar.dart';
import 'package:store/features/home/presentation/view/widgets/rating_widget.dart';
import 'package:store/features/home/presentation/view/widgets/you_like_list_view.dart';
import '../../../../../core/custom_widgets/subtitle_text_widget.dart';
import 'book_action_widget.dart';


class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const BookDetailAppBar(),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network('https://m.media-amazon.com/images/I/51i6KX4JNIL._SY445_SX342_.jpg',
            fit: BoxFit.fill,
            height:size.height*0.35 ,
            width: size.width*0.45,
          ),
        ),
        SizedBox(height: size.height*0.02,),
        const CustomTextWidget(title: 'White Bird',fontSize: 30,),
        SizedBox(height: size.height*0.01,),
        const SubTitleWidget(subTitle: 'R.J.PALACIO'),
        SizedBox(height: size.height*0.01,),
        const RatingWidget(),
        SizedBox(height: size.height*0.02,),
        const BookAction(),
        SizedBox(height: size.height*0.01,),
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: CustomTextWidget(title: 'You can also like',),),
        ),
        SizedBox(height: size.height*0.01,),
        const YouLikeListView(),

      ],
    );
  }
}

