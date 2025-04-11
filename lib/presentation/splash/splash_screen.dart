import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/medium_button.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  final void Function() onTapStartCooking;

  const SplashScreen({
    super.key,
    required this.onTapStartCooking,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash_image.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            child: Column(
              children: [
                const SizedBox(
                  height: 104,
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '100K+ Premium Recipe ',
                  style: TextStyles.mediumTextBold
                      .copyWith(color: ColorStyles.white),
                ),
                const Spacer(),
                SizedBox(
                  width: 213,
                  child: Text(
                    'Get Cooking',
                    style: TextStyles.headerTextBold
                        .copyWith(color: ColorStyles.white, fontSize: 48),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Simple way to find Tasty Recipe',
                  style: TextStyles.normalTextRegular
                      .copyWith(color: ColorStyles.white),
                ),
                const SizedBox(
                  height: 64,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  child: MediumButton('Start Cooking',
                      onPressed: onTapStartCooking),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
