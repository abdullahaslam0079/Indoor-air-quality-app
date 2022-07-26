import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:iaq/userInterface/home/home_screen.dart';
import 'package:iaq/utils/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  final Color kDarkBlueColor = primaryColor;

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Next',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      finishButtonColor: kDarkBlueColor,
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Next',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            'assets/images/logo.jpg',
            height: 400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            'assets/images/logo.jpg',
            height: 400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            'assets/images/logo.jpg',
            height: 400,
          ),
        ),
      ],
      speed: 1.8,
      pageBodies: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /*const SizedBox(
                height: 480,
              ),
              Text(
                'IAQ Testing Company',
                textAlign: TextAlign.center,
                style: bigHeadingTextStyle,
              ),*/
              const SizedBox(
                height: 420,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo1.jpg',
                    fit: BoxFit.cover,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'The Indoor air quality testing company',
                textAlign: TextAlign.center,
                style: headingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 420,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo1.jpg',
                    fit: BoxFit.cover,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Certified - Licensed - Insured\nAffordable - Friendly - Professional',
                textAlign: TextAlign.center,
                style: headingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 420,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo1.jpg',
                    fit: BoxFit.cover,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Checkout our services in USA',
                textAlign: TextAlign.center,
                style: headingTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
