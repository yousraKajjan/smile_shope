// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../shared/components/constants.dart';
// import '../../shared/utils/assets.dart';
// import '../../shared/widgets/sliding_-text.dart';
// import '../onboarding/onboarding.dart';

// class SplashBody extends StatefulWidget {
//   const SplashBody({super.key});

//   @override
//   State<SplashBody> createState() => _SplashBodyState();
// }

// class _SplashBodyState extends State<SplashBody>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationcontroller;
//   late Animation<Offset> slidingAnimation;

//   @override
//   void initState() {
//     super.initState();
//     initSlidingInimation();
//     navigteToOnBoarding();
//   }

//   String nextPage = "";

//   @override
//   void dispose() {
//     super.dispose();
//     animationcontroller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Image.asset(AssetsData.logo),
//         const SizedBox(
//           height: 25,
//         ),
//         slidingText(slidingAnimation: slidingAnimation),
//       ],
//     );
//   }

//   void initSlidingInimation() {
//     animationcontroller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 2),
//     );
//     slidingAnimation =
//         Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
//             .animate(animationcontroller);
//     animationcontroller.forward();
//   }

//   void navigteToOnBoarding() {
//     Timer(const Duration(seconds: 1), () {
//       Get.offAll(() => const onBoardingScreen(),
//           transition: Transition.fade, duration: ktranstionDuration);
//     });
//     // Future.delayed(
//     //  const Duration(seconds: 3),
//     //  (){
//     //    Get.to(()=> const onBoardingScreen(),transition: Transition.fade ,duration: ktranstionDuration);
//     //  }
//     //     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:smile_shope/main.dart';
import 'package:smile_shope/shared/utils/assets.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  String nextPage = "";
  @override
  void initState() {
    initNextPage();
    super.initState();
  }

  initNextPage() async {
    if (initscreen == 0 || initscreen == null) {
      nextPage = "/onboard";
    } else {
      nextPage = '/home';
    }

    await Future.delayed(
      const Duration(seconds: 4),
    );
    Navigator.pushReplacementNamed(context, nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Image.asset(AssetsData.logo),
        ),
      ),
    );
  }
}
