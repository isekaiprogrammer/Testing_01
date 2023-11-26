import 'package:best_flutter_ui_templates/Score_Screen.dart';
import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int score = 0;
  List<String> correctAnswers = [
    "print",
    "Input",
    "B",
    "#",
    "True",
    "7",
    "def",
    "3",
    "len()",
    "tuple",
    "lower()",
    "break",
    "1",
    "3",
    "3"
  ];
  List<String> userAnswers = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
  ];

  @override
  void initState() {
    super.initState();
  }

  bool isAnswerCorrect(int questionIndex, String userAnswer) {
    return userAnswer.trim() == correctAnswers[questionIndex].trim();
  }

  void _submitButtonPressed() {
    int correctAnswersCount = 0;
    for (int i = 0; i < correctAnswers.length; i++) {
      if (isAnswerCorrect(i, userAnswers[i])) {
        correctAnswersCount++;
      } else {}
    }
    score = (correctAnswersCount / correctAnswers.length * 100).round();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ScoreScreen(score: score)),
    );
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
          body: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        left: 16,
                        right: 16),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 85, top: 50),
                    child: Text(
                      'Data Science Quiz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '1. _____(“Hello World”)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(0),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '2. input = _____(“Input num : “)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(1),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '3. x = ["A", "B"]; x[1] = _',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(2),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '4. _ ini adalah komen',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(3),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '5. Apakah benar file ekstensi python adalah .py (True or False)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(4),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '6. Berapakah nilai dari ekspresi 4 + 3 % 5',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(5),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '7. ___ MyFunction(x)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(6),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '8. for angka in range(5), angka[3] adalah',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(7),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '9. Bagaimana cara mendapatkan panjang dari sebuah list di Python?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(8),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '10. Struktur data yang tidak dapat diubah (immutable) dan berisi sejumlah elemen disebut',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(9),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '11. Fungsi untuk mengonversi string ke dalam lowercase (huruf kecil)?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(10),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '12. Fungsi untuk Menghentikan eksekusi loop dan keluar dari loop.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(11),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '13. x = 5, y = 2. Berapa nilai x % y',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(12),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '14. x = 30, y = 8. Berapa nilai x // y',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(13),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      '15. for angka in range(0, 5, 2), berapa panjang angka?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: isLightMode ? Colors.black : Colors.white),
                    ),
                  ),
                  _buildComposer(14),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
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
                              _submitButtonPressed();
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
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildComposer(int questionIndex) {
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
                onChanged: (String txt) {
                  userAnswers[questionIndex] = txt;
                },
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
