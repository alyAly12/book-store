import 'package:flutter/material.dart';
import '../../../../../core/custom_widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              color: Colors.white,
             borderRadius: const BorderRadius.only(topLeft:Radius.circular(12) ,bottomLeft:Radius.circular(12) ),
              title: r'19.99$',
              fun: (){},
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              color: const Color(0xffE77A63),
              borderRadius: const BorderRadius.only(topRight:Radius.circular(12) ,bottomRight:Radius.circular(12) ),
              title: 'Free Preview',
              fun: (){},
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}