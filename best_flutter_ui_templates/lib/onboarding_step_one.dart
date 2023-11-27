import 'package:flutter/material.dart';
import 'onboarding_step_two.dart';

class OnboardingStepOneScreen extends StatefulWidget {
  //const OnboardingStepOneScreen({Key? key}) : super(key: key);

  @override
  _OnboardingStepOneState createState() => _OnboardingStepOneState();
}

class _OnboardingStepOneState extends State<OnboardingStepOneScreen> {
  int CurrentPage = 1;

  @override
  void initState() {
    super.initState();
  }

  void _nextButtonPressed() {
    // Increment currentPage to move to the next onboarding step
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingStepTwoScreen()),
      );
      CurrentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: _nextButtonPressed, // Call the method when tapped
      child: Container(
        color: Color.fromARGB(255, 12, 25, 201),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: AspectRatio(
                      aspectRatio: 1.2,
                      child: Image.asset(
                        'assets/images/LandingPage_LightBuld.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 0), // Add some space between image and text
                  Text(
                    'OLDEMY',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 10), // Add some space between image and text
                  Center(
                    child: Text(
                      //'Kami akan menyajikan materi\npembelajaran, kuis, dan skor\nuntuk meningkatkan keahlian',
                      'We will present the learning\nmaterial, quizzes, and scores\nto improve your skills',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 50), // Add space between text and dots
                  _buildDots(), // Display the dots
                  SizedBox(height: 55), // Add space between dots and button
                  ElevatedButton(
                    onPressed: _nextButtonPressed,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
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

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildDot(1),
        SizedBox(width: 8),
        _buildDot(2),
        SizedBox(width: 8),
        _buildDot(3),
      ],
    );
  }

  Widget _buildDot(int index) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == CurrentPage
            ? const Color.fromARGB(255, 255, 255, 255)
            : Color.fromARGB(255, 56, 55, 55),
      ),
    );
  }
}
