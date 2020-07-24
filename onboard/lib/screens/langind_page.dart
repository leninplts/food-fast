import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboard/ui_views/slider_layout_view.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: onBoardingBody(),
    );
  }

  Widget onBoardingBody() => Container(
        child: SliderLayoutView(),
      );
}
