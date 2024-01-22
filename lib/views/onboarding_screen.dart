import 'package:cross_multiplication/constants/app_colors.dart';
import 'package:cross_multiplication/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_images.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
    children: [
    Positioned(top: 0, left: 0, child: SvgPicture.asset(AppImages.eclipses)),
    Positioned(
    left: 50,
            top: 200,
            right: 50,
            bottom: 50,
            child: Column(
              children: [
                SvgPicture.asset(AppImages.calculationIllustration),
                AppSpacing.h50,
                const Text(
                  'Get Your Calculations Done Easily',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                AppSpacing.h20,
                const Text(
                  'Easy access cross multiplication for calculating currency, marks, budgets etc...',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                AppSpacing.h130,
                ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(const Size(300, 60)),
                      maximumSize: MaterialStateProperty.all<Size>(const Size(300, 60)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryTeal),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                          )
                      )
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                AppSpacing.h10,
                const Text(
                  'Developer: Bryar L. Faiq',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
