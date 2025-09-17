import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController; //from 0 to 1 we want more than this
  late Animation<Offset> slidinganimation; // but controller on ot to make it not to 1 only

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InitSlidingAnimation();
    NivigateToHome();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }

  void InitSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidinganimation = Tween<Offset>(
      begin: Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

    void NivigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => HomeView(), duration: kTransitionDuration, transition: Transition.rightToLeftWithFade);
    });
  }
}
