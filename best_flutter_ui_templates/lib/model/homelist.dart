import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
//import 'package:best_flutter_ui_templates/fitness_app/fitness_app_home_screen.dart';
//import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
//import 'package:best_flutter_ui_templates/introduction_animation/introduction_animation_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: DesignCourseHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/Web_Development.png',
    ),
    HomeList(
      imagePath: 'assets/design_course/AI_Course_TBA.png',
    ),
    HomeList(
      imagePath: 'assets/design_course/Techno.png',
    ),
  ];
}
