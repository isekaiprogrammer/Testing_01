import 'package:best_flutter_ui_templates/datas_course_screen.dart';
import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
import 'package:best_flutter_ui_templates/sql_course_screen.dart';
import 'package:best_flutter_ui_templates/turorialmatplotlib_course_screen.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class phythonDataFrameCourseScreen extends StatefulWidget {
  @override
  _phythonDataFrameCourseState createState() => _phythonDataFrameCourseState();
}

class _phythonDataFrameCourseState extends State<phythonDataFrameCourseScreen> {
  final videoURL = "https://youtu.be/F6kmIpWWEdU?si=HQBe7UT0GKR87CT7";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  void _dataSciencePressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DatasCourseScreen()),
      );
    });
  }

  void _beginnersSQLPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => sqlCourseScreen()),
      );
    });
  }

  void _tutorialMatplotlibPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => tutorialMatplotlibCourseScreen()),
      );
    });
  }

  void _tutorialMachineLearningPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => tutorialMatplotlibCourseScreen()),
      );
    });
  }

  void _BacktohomePressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigationHomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? Colors.white : Colors.black,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: isLightMode ? Colors.white : Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: 16,
                  right: 16,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(top: 60),
                        child: YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
                          onReady: () => debugPrint('Ready'),
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(
                              isExpanded: true,
                              colors: const ProgressBarColors(
                                playedColor: Colors.amber,
                                handleColor: Colors.amberAccent,
                              ),
                            ),
                            const PlaybackSpeedButton(),
                            FullScreenButton(),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Python Pandas Tutorial : Dataframe Basics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: isLightMode ? Colors.black : Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          'If you are interested in Python\nWatch the video above.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: isLightMode ? Colors.black : Colors.white),
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 16),
                        child: Text(
                          'Video di atas menjelaskan tentang bagaimana cara membuat Dataframe sederhana menggunakan pandas. penjelasan langkah-langkah untuk mengimpor pandas, membuat Dataframe dari struktur data seperti daftar atau kamus, serta cara menyesuaikan dan memanipulasi Dataframe tersebut. Penonton dapat mengharapkan penjelasan tentang fungsi-fungsi kunci dalam pandas seperti pd.DataFrame()',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 14,
                              color: isLightMode ? Colors.black : Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: isLightMode ? Colors.blue : Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  offset: const Offset(4, 4),
                                  blurRadius: 8.0,
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      'Full Details\n(coming soon)',
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
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'Next Course',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: isLightMode ? Colors.black : Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _dataSciencePressed,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text(
                          'Data Science',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _beginnersSQLPressed,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text(
                          'SQL Tutorial for Beginners',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _tutorialMatplotlibPressed,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text(
                          'Matplotlib Tutorial',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _tutorialMachineLearningPressed,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text(
                          'Machine Learning Tutorial',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Container(
                            width: 140,
                            height: 60,
                            decoration: BoxDecoration(
                              color: isLightMode
                                  ? Color.fromARGB(255, 235, 32, 32)
                                  : Colors.white,
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
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  _BacktohomePressed();
                                },
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      'Back to Home',
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
            ],
          ),
        ),
      ),
    );
  }
}
