import 'package:flutter/material.dart';

import '../../../../../core/custom_widgets/custom_text_widget.dart';
import '../../../../../core/custom_widgets/subtitle_text_widget.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star,color: Colors.yellowAccent,),
        CustomTextWidget(title: '4.8'),
        SubTitleWidget(subTitle: '(243)')
      ],
    );
  }
}

