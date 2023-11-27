import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
import 'package:best_flutter_ui_templates/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add a form key

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
  }

  void _loginButtonPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigationHomeScreen()),
      );
    });
  }

  void _guestLoginPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigationHomeScreen()),
      );
    });
  }

  void _signupButtonPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapping outside of the input fields
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: Color.fromARGB(255, 12, 25, 201),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 60), // Add some space between image and text
                  Text(
                    'OLDEMY',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset(
                        'assets/images/Person_Computer_Front.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 0), // Add space between image and inputs
                  Form(
                    key: _formKey,
                    autovalidateMode: _autovalidateMode, // Set autovalidateMode
                    child: Column(
                      children: [
                        _buildEmailInput(),
                        SizedBox(height: 20), // Add space between inputs
                        _buildPasswordInput(),
                      ],
                    ),
                  ),
                  SizedBox(height: 15), // Add space between dots and button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: ElevatedButton(
                          onPressed: _signupButtonPressed,
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 243, 117, 33),
                          ),
                          child: Text('Sign Up'),
                        ),
                      ),
                      SizedBox(width: 20), // Add space between buttons
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // Set autovalidateMode to always before validating
                            setState(() {
                              _autovalidateMode = AutovalidateMode.always;
                            });

                            if (_formKey.currentState!.validate()) {
                              // Only navigate if the form is valid
                              _loginButtonPressed();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 6, 150, 14),
                          ),
                          child: Text('  Login  '),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _guestLoginPressed,
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 196, 178, 11),
                    ),
                    child: Text(
                      'Guest Login',
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

  Widget _buildEmailInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          filled: true,
          fillColor: Colors.white,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is required';
          }
          // You can add more complex email validation if needed
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: true,
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
          filled: true,
          fillColor: Colors.white,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          // You can add more complex password validation if needed
          return null;
        },
      ),
    );
  }
}
