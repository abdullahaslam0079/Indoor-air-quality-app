import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iaq/provider/user_provider.dart';
import 'package:iaq/userInterface/home/home_screen.dart';
import 'package:iaq/utils/styles.dart';
import 'package:provider/provider.dart';
import '../../storage/sharedPref.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    print('This is the first status ::: '+ SharedPrefs().isOnBoarded.toString());
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => SharedPrefs().isOnBoarded ? const HomeScreen() : const OnBoardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Center(
              child: Image.asset('assets/images/logo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Image.asset('assets/images/logo1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          /*Text('IAQ',
            style: bigTitleTextStyle,
          ),
          Text('Testing Company',
            style: bigTitleTextStyle,
          ),*/
        ],
      ),
    );
  }
}
