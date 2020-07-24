import 'package:flutter/widgets.dart';
import 'package:onboard/constants/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider({
    @required this.sliderImageUrl,
    @required this.sliderHeading,
    @required this.sliderSubHeading,
  });
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/images/onboarding1.png',
      sliderHeading: Constants.SLIDER_HEADING_1,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'assets/images/onboarding2.png',
      sliderHeading: Constants.SLIDER_HEADING_2,
      sliderSubHeading: Constants.SLIDER_DESC),
  Slider(
      sliderImageUrl: 'assets/images/onboarding3.png',
      sliderHeading: Constants.SLIDER_HEADING_3,
      sliderSubHeading: Constants.SLIDER_DESC),
];
