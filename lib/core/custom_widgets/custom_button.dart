import 'package:flutter/material.dart';
import 'package:store/core/custom_widgets/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.title,
      required this.fun,
      required this.textColor,

      this.borderRadius});
  final Color color;
  final BorderRadius? borderRadius;
  final String title;
  final void Function() fun;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          onPressed: fun,
          child: Center(
            child: CustomTextWidget(
              title: title,
              color: textColor,

            ),
          )),
    );
  }
}
