import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _backButtonPressed() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? AppTheme.white : AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: isLightMode ? AppTheme.white : AppTheme.nearlyBlack,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                //child: Image.asset('assets/images/inviteImage.png'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 250),
                child: Text(
                  'COMING SOON',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isLightMode ? Colors.black : Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some space between image and text
              Center(
                child: Text(
                  //'Kami akan menyajikan materi\npembelajaran, kuis, dan skor\nuntuk meningkatkan keahlian',
                  'User Can Sign Up to\nThe App in This Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 60), // Add space between dots and button
              ElevatedButton(
                onPressed: _backButtonPressed,
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(
                      255, 243, 33, 33), // Change the color here
                ),
                child: Text('Back to Login Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
