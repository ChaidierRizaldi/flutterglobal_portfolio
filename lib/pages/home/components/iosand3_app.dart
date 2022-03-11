// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterglobal_portfolio/utils/constants.dart';
import 'package:flutterglobal_portfolio/utils/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class IosAndApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(760.0),
        mobile: _buildUi(MediaQuery.of(context).size.width * .8),
      ),
    );
  }
}

Widget _buildUi(double width) {
  return Center(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Container(
            child: Flex(
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Image.asset(
                    "assets/findjobApp.png",
                    // Set width for image on smaller screen
                    width: constraints.maxWidth > 720.0 ? null : 300.0,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IOS/ANDROID APP",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "FIND JOB APP",
                          style: GoogleFonts.oswald(
                            color: kTextColor,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Build an online IT job search applications with the Flutter framework and the Dart programming language using State Management to manage data",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      "GET APP",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: kPrimaryColor,
                                  ),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        "SEE REPOSITORY",
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
