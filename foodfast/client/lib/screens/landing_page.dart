import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodfast/ui_views/onboarding_layout_view.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBoarding(),
    );
  }

  Widget onBoarding() => Container(
        child: OnBoardingLayoutView(),
      );
}
