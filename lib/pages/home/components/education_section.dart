// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutterglobal_portfolio/models/education.dart';
import 'package:flutterglobal_portfolio/utils/constants.dart';
import 'package:flutterglobal_portfolio/utils/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<Education> educationList = [
  Education(
    description:
        "In 2017 I started to study Informatics at the Islamic University of Indonesia, where I studied for 4 years and graduated on time in 2021. There I deepened my technical knowledge of algorithms and data structures, information technology development management and software engineering. FInally, I was interested how to make apps based on mobile devices, and I was introduced to Android made with Android Studio. Following the times, I also kearned about the development of multi-device application, even using the Flutter framework",
    period: "2017 - 2021",
  ),
  Education(
    description:
        "I started school in 2014 at the state high school in Jembrana, Bali, and finished my 3 years in 2017. When I was school, I'm very interested in information technology and passionate about technology development, and finally I decided to graduate from high school After looking for colleges speciallizing in information technology",
    period: "2014 - 2017",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(800.0),
        mobile: _buildUi(MediaQuery.of(context).size.width * .8),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "EDUCATION",
              style: GoogleFonts.oswald(
                color: kTextColor,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 800.0),
                  child: Text(
                    "Below is my journey from high school to earning a Bachelor's Degree in Informatics Engineering",
                    style: TextStyle(
                      color: kCaptionColor,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(builder: (context, constraints) {
              return Container(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20,
                  children: educationList
                      .map(
                        (education) => Container(
                          width: constraints.maxWidth / 2 - 20,
                          child: Column(
                            children: [
                              Text(
                                education.period,
                                style: GoogleFonts.oswald(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.description,
                                maxLines: 25,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kCaptionColor,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
