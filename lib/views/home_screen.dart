import 'package:cross_multiplication/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
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
                boxShadow: const [BoxShadow(color: Colors.black38, offset: Offset(0, 5), blurRadius: 10, spreadRadius: 0.1),],
                  color: Colors.teal, borderRadius: BorderRadius.circular(50)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'Light',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  // SvgPicture.asset(AppImages.switchImage),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
