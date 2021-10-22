import 'package:flutter/material.dart';

import 'package:onboarding_screen_app_ui/constants.dart';
import 'package:onboarding_screen_app_ui/model/sliders.dart';
import 'package:onboarding_screen_app_ui/screens/conponents/skip_button.dart';

import 'conponents/main_button.dart';
import 'conponents/slider_container.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int selectedSlider = 0;
  PageController sliderController =
      PageController(initialPage: 0, keepPage: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: sliderController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedSlider = index;
                    });
                  },
                  itemCount: demoSlider.length,
                  itemBuilder: (context, index) {
                    return SliderContainer(
                      slider: demoSlider[index],
                    );
                  },
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          demoSlider.length, (index) => buildSliderNav(index)),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Row(
                        children: [
                          SkipButton(
                            tapEvent: () {},
                          ),
                          Spacer(),
                          MainButton(
                            tapEvent: () {
                              if (selectedSlider != (demoSlider.length - 1)) {
                                sliderController.animateToPage(
                                  selectedSlider + 1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.linear,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildSliderNav(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: selectedSlider == index ? kPrimaryColor : Color(0xFFD7D7D7),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
