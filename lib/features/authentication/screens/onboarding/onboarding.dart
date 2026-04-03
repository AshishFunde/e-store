import 'package:e_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                title: ETexts.onBoardingSubTitle1,
                subTitle: ETexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: ETexts.onBoardingSubTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: ETexts.onBoardingSubTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //SkipButton
          OnBoardingSkip(),
          //Dot Navigation SmoothPage Indicator
          OnBoardingDotNavigation(),
          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      right: ESizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          iconSize: 25,
          backgroundColor: dark ? EColors.primary : Colors.black,
        ),
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? EColors.light : EColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EDeviceUtils.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
            width: EHelperFunctions.screenWidth() * 0.8,
            height: EHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          SizedBox(height: ESizes.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ESizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
