import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding_screen_app_ui/model/sliders.dart';

import '../../constants.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    Key key,
    @required this.slider,
  }) : super(key: key);
  final SliderModel slider;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Spacer(),
        SvgPicture.asset(
          slider.image,
          height: (270 / 896) * size.height,
        ),
        Spacer(),
        Text(
          slider.title,
          style: TextStyle(
            color: kTextColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2,
          ),
          child: Text(
            slider.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: kTextLightColor,
            ),
          ),
        )
      ],
    );
  }
}
