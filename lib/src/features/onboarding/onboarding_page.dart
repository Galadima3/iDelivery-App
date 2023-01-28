import 'package:flutter/material.dart';
import 'package:idelivery_app/src/utils/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common_widgets/onboard_botton.dart';
import '../../common_widgets/onboarding_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          PageView(
            controller: _controller,
            children: [
              // IntroScreen(color: Colors.blue.shade300,),
              // IntroScreen(color: Colors.green,),IntroScreen(color: Colors.deepPurple,)
              OnboardingScreen(
                  screenText: 'Get your packages delivered',
                  imagePath: imageLink1),
              OnboardingScreen(
                  screenText: 'Track your Orders easily',
                  imagePath: imageLink2),
              OnboardingScreen(
                  screenText: 'Speak with Customer service',
                  imagePath: imageLink3),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TextButton(onPressed: () {}, child: const Text('SKIP'), st),
                  GestureDetector(
                      onTap: () => _controller.jumpToPage(2),
                      child: onboardButton('SKIP')),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.white38,
                        activeDotColor: Colors.white),
                        onDotClicked: (index) => _controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  ),
                  GestureDetector(
                    onTap: () => _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut),
                    child: onboardButton('NEXT')),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
