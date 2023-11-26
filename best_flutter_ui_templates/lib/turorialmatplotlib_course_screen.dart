import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/datas_course_screen.dart';
import 'package:best_flutter_ui_templates/navigation_home_screen.dart';
import 'package:best_flutter_ui_templates/phytondataframe_course_screen.dart';
import 'package:best_flutter_ui_templates/sql_course_screen.dart';
import 'package:best_flutter_ui_templates/turorialmachinelearning_course_screen.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class tutorialMatplotlibCourseScreen extends StatefulWidget {
  @override
  _tutorialMatplotlibCourseState createState() =>
      _tutorialMatplotlibCourseState();
}

class _tutorialMatplotlibCourseState
    extends State<tutorialMatplotlibCourseScreen> {
  final videoURL = "https://youtu.be/zl5qPnqps8M?si=F0sUCd2wuFQWy7XA";

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

  void _pythonDataFramePressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => phythonDataFrameCourseScreen()),
      );
    });
  }

  void _tutorialMachineLearningPressed() {
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => tutorialMachineLearningCourseScreen()),
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
      color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor:
              isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: 16,
                  right: 16,
                ),
              ),
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
                  'Matplotlib Tutorial',
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
                  'If you are interested in Matplotlib\nWatch the video above.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: isLightMode ? Colors.black : Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
                child: Text(
                  'Video diatas menjelaskan tentang membuat visualisasi data menggunakan matplotlib. Video ini mencakup topik seperti pengenalan terhadap matplotlib, pembuatan grafik dasar seperti scatter plot, line plot, dan bar plot. Pemirsa dapat mengantisipasi penjelasan tentang berbagai jenis grafik yang dapat dibuat dengan matplotlib, pengaturan sumbu, dan penambahan elemen-elemen tambahan seperti judul, label, dan legenda. Selain itu, video tersebut mungkin memberikan contoh penggunaan matplotlib untuk membuat visualisasi data yang lebih kompleks, seperti heatmap, histogram, atau grafik pie.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14,
                      color: isLightMode ? Colors.black : Colors.white),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Full Details\n(coming soon)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      isLightMode ? Colors.white : Colors.black,
                                ),
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
                child: Text('Data Science'),
              ),
              ElevatedButton(
                onPressed: _beginnersSQLPressed,
                child: Text('SQL Tutorial for Beginners'),
              ),
              ElevatedButton(
                onPressed: _pythonDataFramePressed,
                child: Text('Phyton Pandas Tutorial'),
              ),
              ElevatedButton(
                onPressed: _tutorialMachineLearningPressed,
                child: Text('Machine Learning Tutorial'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 40,
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
                          FocusScope.of(context).requestFocus(FocusNode());
                          _BacktohomePressed();
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Back to Home',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color:
                                    isLightMode ? Colors.white : Colors.black,
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
    );
  }
}
