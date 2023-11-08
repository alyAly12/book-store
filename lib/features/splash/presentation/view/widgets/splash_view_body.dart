import 'package:flutter/material.dart';
import 'package:store/core/utils/assets_manager.dart';
import 'package:store/features/home/presentation/view/home_view.dart';
import 'animated_sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsManager.logo),
        const SizedBox(height: 15,),
         AnimatedSlidingText(slideAnimation: slideAnimation)
      ],
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slideAnimation = Tween<Offset>(begin:const Offset(0, 8) ,end:  const Offset(0,0)).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, HomeView.id);
    });
  }
}

