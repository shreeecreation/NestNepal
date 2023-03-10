import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clientside/src/app/presentation/homepage/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => AnimatedSplashScreen(
                  splash: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.asset(
                            'assets/images/splash.png',
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                ),
                  duration: 1000,
                  splashIconSize: double.maxFinite,
                  splashTransition: SplashTransition.fadeTransition,
                  pageTransitionType: PageTransitionType.fade,
                  nextScreen: const HomeScreen(),
                ));
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
