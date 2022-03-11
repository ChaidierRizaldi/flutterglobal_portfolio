import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xffC1CFC0);
const Color kBackgroundColor = Color(0xff11324D);
const Color kDangerColor = Color(0xffC36839);
const Color kCaptionColor = Color(0xff6B7AA1);
const Color kTextColor = Color(0xffFFF5EB);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
