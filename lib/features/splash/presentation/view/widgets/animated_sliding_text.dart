import 'package:flutter/material.dart';
import '../../../../../core/custom_widgets/custom_text_widget.dart';


class AnimatedSlidingText extends StatelessWidget {
  const AnimatedSlidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context,_) {
        return SlideTransition(
            position: slideAnimation,
            child: const CustomTextWidget(title: 'Charm of knowledge',textAlign: TextAlign.center,));
      },
    );
  }
}