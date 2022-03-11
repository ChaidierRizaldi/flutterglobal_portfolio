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
        "This is a simple education and details about it is stated below",
    linkName: "www.example.com",
    period: "2019 - PRESENT",
  ),
  Education(
    description:
        "This is a simple education and detail about it is stated below",
    linkName: "www.example.com",
    period: "2018 - 2019",
  ),
  Education(
    description:
        "This is a simple education and detail about it is stated below",
    linkName: "www.example.com",
    period: "2017 - 2018",
  ),
  Education(
    description:
        "This is a simple education and detail about it is stated below",
    linkName: "www.example.com",
    period: "2016 - 2017",
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
                    "A full stack allround designer that may or may not include a guide for specific creative",
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
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: kCaptionColor,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    education.linkName,
                                    style: TextStyle(
                                      color: kTextColor,
                                    ),
                                  ),
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
