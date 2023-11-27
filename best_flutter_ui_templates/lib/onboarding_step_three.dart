import 'package:best_flutter_ui_templates/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingStepThreeScreen extends StatefulWidget {
  //const OnboardingStepThreeScreen({Key? key}) : super(key: key);

  @override
  _OnboardingStepThreeState createState() => _OnboardingStepThreeState();
}

class _OnboardingStepThreeState extends State<OnboardingStepThreeScreen> {
  int CurrentPage = 3;

  @override
  void initState() {
    super.initState();
  }

  void _nextButtonPressed() {
    // Increment currentPage to move to the next onboarding step
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
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
                      'Learn from the basics so you dont get lost\nwith a structured learning flow',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 60), // Add space between text and dots
                  _buildDots(), // Display the dots
                  SizedBox(height: 60), // Add space between dots and button
                  ElevatedButton(
                    onPressed: _nextButtonPressed,
                    style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                    child: Text('Next',
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
