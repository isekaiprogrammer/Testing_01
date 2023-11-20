import 'package:best_flutter_ui_templates/design_course/design_course_app_theme.dart';
import 'package:best_flutter_ui_templates/onboarding_step_one.dart';
import 'package:flutter/material.dart';


class LandingPageScreen extends StatefulWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _startNavigation() {
    // Navigate to the NavigationHomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingStepOneScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _startNavigation, // Call the method when tapped
      child: Container(
        color: DesignCourseAppTheme.nearlyWhite,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: AspectRatio(
                      aspectRatio: 1.2,
                      child: Image.asset(
                        'assets/images/LandingPage_LightBuld.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add some space between image and text
                  Text(
                    'OLDEMY',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
