import 'package:flutter/cupertino.dart';
import 'package:foodfast/constants/constants.dart';
import 'package:foodfast/models/slider.dart';
import 'package:foodfast/widgets/get_started_button.dart';
import 'package:foodfast/widgets/slide_dots.dart';
import 'package:foodfast/widgets/slider_item.dart';

class OnBoardingLayoutView extends StatefulWidget {
  @override
  _OnBoardingLayoutViewState createState() => _OnBoardingLayoutViewState();
}

class _OnBoardingLayoutViewState extends State<OnBoardingLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => SliderLayout();

  bool inFinalPage() {
    if (_currentPage == sliderArrayList.length - 1) {
      return true;
    }
    return false;
  }

  Widget SliderLayout() => Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.17),
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: sliderArrayList.length,
                itemBuilder: (ctx, i) => SlideItem(i),
              ),
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 25.0,
                        top: MediaQuery.of(context).size.width * 0.12),
                    child: GestureDetector(
                      onTap: () {
                        _onPageChanged(sliderArrayList.length - 1);
                      },
                      child: Text(
                        inFinalPage() ? "" : Constants.SKIP,
                        style: TextStyle(
                            fontFamily: Constants.OPEN_SANS,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.0,
                            color: Color(0xff2f4858)),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(
                      bottom: 0.0,
                      top: MediaQuery.of(context).size.height * 0.82),
                  child: inFinalPage()
                      ? GetStartedButton()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < sliderArrayList.length; i++)
                              if (i == _currentPage)
                                SlideDots(true)
                              else
                                SlideDots(false)
                          ],
                        ),
                ),
              ],
            )
          ],
        ),
      );
}
