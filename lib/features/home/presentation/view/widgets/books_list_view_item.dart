import 'package:flutter/material.dart';
import 'package:store/core/custom_widgets/custom_text_widget.dart';
import 'package:store/core/custom_widgets/subtitle_text_widget.dart';
import 'package:store/features/home/presentation/view/widgets/rating_widget.dart';
import '../book_detail_view.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BookDetailView.id);
      },
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(12),
           child: Image.network('https://m.media-amazon.com/images/I/51i6KX4JNIL._SY445_SX342_.jpg',
           fit: BoxFit.fill,
           height:size.height*0.20 ,
             width: size.width*0.25,
           ),
         ),
          const SizedBox(width: 10,),
           const Flexible(
            child: Padding(
              padding:  EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                  CustomTextWidget(title: 'White Bird',maxLines: 2,),
                   SizedBox(height: 10,),
                  SubTitleWidget(subTitle: 'R.J.PALACIO'),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(title: r'19.90 $',color: Colors.green,),
                      RatingWidget()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
