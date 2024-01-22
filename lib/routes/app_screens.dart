import 'package:cross_multiplication/views/home_screen.dart';
import 'package:cross_multiplication/views/onboarding_screen.dart';
import 'package:get/get.dart';

class RoutesManager {
  static String onboardingScreen = '/';
  static String homeScreen = '/home';

  static String getOnBoardingRoute() => onboardingScreen;

  static String getHomeRoute() => homeScreen;

  static List<GetPage> routes = [
    GetPage(name: onboardingScreen, page: () => const OnBoardingScreen()),
    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
