// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterglobal_portfolio/pages/home/components/carousel.dart';
import 'package:flutterglobal_portfolio/pages/home/components/cv_section.dart';
import 'package:flutterglobal_portfolio/pages/home/components/education_section.dart';
import 'package:flutterglobal_portfolio/pages/home/components/footer.dart';
import 'package:flutterglobal_portfolio/pages/home/components/header.dart';
import 'package:flutterglobal_portfolio/pages/home/components/iosand1_app.dart';
import 'package:flutterglobal_portfolio/pages/home/components/iosand3_app.dart';
import 'package:flutterglobal_portfolio/pages/home/components/skill_section.dart';
import 'package:flutterglobal_portfolio/pages/home/components/iosand2_app.dart';
import 'package:flutterglobal_portfolio/utils/constants.dart';
import 'package:flutterglobal_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              CvSection(),
              IosAndApp1(),
              SizedBox(
                height: 70.0,
              ),
              IosAndApp2(),
              SizedBox(
                height: 70,
              ),
              IosAndApp3(),
              SizedBox(
                height: 70.0,
              ),
              EducationSection(),
              SizedBox(
                height: 50.0,
              ),
              SkillSection(),
              SizedBox(
                height: 50.0,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
