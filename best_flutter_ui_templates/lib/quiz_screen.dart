import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor:
              isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        left: 16,
                        right: 16),
                    //child: Image.asset('assets/images/feedbackImage.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      'Data Science Quiz',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      '1. _____(“Hello Wolrd”)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      '2. input = _____(“Input num : “)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      '3. x = ["A", "B"]; x[1] = _',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(),
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      '4. _ ini adalah komen',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isLightMode ? Colors.blue : Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                offset: const Offset(4, 4),
                                blurRadius: 8.0),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Submit Answer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: isLightMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildComposer() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              offset: const Offset(4, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            padding: const EdgeInsets.all(4.0),
            constraints: BoxConstraints(minHeight: 40),
            color: AppTheme.white,
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: TextField(
                maxLines: null,
                onChanged: (String txt) {},
                style: TextStyle(
                  fontFamily: AppTheme.fontName,
                  fontSize: 16,
                  color: AppTheme.dark_grey,
                ),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your Answer...',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
