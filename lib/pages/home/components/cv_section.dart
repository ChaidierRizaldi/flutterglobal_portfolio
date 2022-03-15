// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterglobal_portfolio/models/design_process.dart';
import 'package:flutterglobal_portfolio/utils/constants.dart';
import 'package:flutterglobal_portfolio/utils/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<DesignProcess> desginProcess = [
  DesignProcess(
    title: "DESIGN",
    imagePath: "assets/design.png",
    subtitle:
        "Ability to design applications to prepare the stage of clarification for appearance of application to be built",
  ),
  DesignProcess(
    title: "DEVELOP",
    imagePath: "assets/develop.png",
    subtitle:
        "Ability to develop wll designed applications with all on demand or already available features",
  ),
  DesignProcess(
    title: "WRITE",
    imagePath: "assets/write.png",
    subtitle:
        "Able to create maintainable code easly also makes for a clean architecture",
  ),
  DesignProcess(
    title: "TEAMWORK",
    imagePath: "assets/support.png",
    subtitle:
        "Able to collaborate in a productive team and aslo has excellent communication skills",
  ),
];

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, 1000.0),
        tablet: _buildUi(context, 760.0),
        mobile: _buildUi(context, MediaQuery.of(context).size.width * .8),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // need the context to get maxWidth before the constraints below
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BETTER DEVELOP,\nBETTER EXPERIENCES",
                style: GoogleFonts.oswald(
                  color: kTextColor,
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                  fontSize: 18.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "DOWNLOAD CV",
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: LayoutBuilder(
              builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  padding: EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                            ScreenHelper.isMobile(context)
                        ? constraints.maxWidth / 2.0
                        : 250.0,
                    // hack to adjust child height
                    childAspectRatio: ScreenHelper.isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                desginProcess[index].imagePath,
                                width: 40.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                desginProcess[index].title,
                                style: GoogleFonts.oswald(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: kTextColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            desginProcess[index].subtitle,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: desginProcess.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
