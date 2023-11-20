import 'package:best_flutter_ui_templates/onboarding_step_three.dart';
import 'package:best_flutter_ui_templates/onboarding_step_one.dart';
import 'package:flutter/material.dart';

class OnboardingStepTwoScreen extends StatefulWidget {
  const OnboardingStepTwoScreen({Key? key}) : super(key: key);

  @override
  _OnboardingStepTwoState createState() => _OnboardingStepTwoState();
}

class _OnboardingStepTwoState extends State<OnboardingStepTwoScreen> {
  int CurrentPage = 2;

  @override
  void initState() {
    super.initState();
  }

  void _nextButtonPressed() {
    // Increment currentPage to move to the next onboarding step
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingStepThreeScreen()),
      );
      CurrentPage++;
    });
  }

  void _backButtonPressed() {
    // Decrement currentPage to move to the previous onboarding step
    if (CurrentPage > 1) {
      setState(() {
        CurrentPage--;

        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                OnboardingStepOneScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(-1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOutQuart;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _nextButtonPressed, // Call the method when tapped
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
                      'Learning materials up to date & learning\nflow which is directional',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: _backButtonPressed,
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              255, 243, 33, 33), // Change the color here
                        ),
                        child: Text('Back'),
                      ),
                      SizedBox(width: 20), // Add space between buttons
                      ElevatedButton(
                        onPressed: _nextButtonPressed,
                        child: Text('Next'),
                      ),
                    ],
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
