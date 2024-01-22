import 'package:cross_multiplication/components/numerator_divider_denominator.dart';
import 'package:cross_multiplication/constants/app_images.dart';
import 'package:cross_multiplication/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    child: SvgPicture.asset(
                      AppImages.roundedRectangle,
                      width: screenWidth,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                spreadRadius: 0.1),
                          ],
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Light',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          AppSpacing.w10,
                          SvgPicture.asset(AppImages.switchImage),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 170,
                    child: Text(
                      'Write A Letter In Only One Of The Gaps\nAnd Fill Others With Numbers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppSpacing.h50,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumeratorDividerDenominator(),
                Text(
                  '   =   ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                NumeratorDividerDenominator(),
              ],
            ),
            AppSpacing.h10,
            const Text(
              'Here is where the result will be shown.',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
            AppSpacing.h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'X',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                const Text(
                  '  =  ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.teal.shade50,
                  width: 120,
                  height: 60,
                  child: const Text(
                    '16',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            AppSpacing.h50,
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(300, 60)),
                  maximumSize:
                      MaterialStateProperty.all<Size>(const Size(300, 60)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryTeal),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ))),
              onPressed: () {},
              child: const Text(
                'Calculate',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}