import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:molefocs/presentation/home/home_langfoc/langfoc_home.dart';
import 'package:molefocs/presentation/home/home_listening/listening_home.dart';
import 'package:molefocs/presentation/home/home_reading/reading_home.dart';
import 'package:molefocs/presentation/home/home_writing/writing_home.dart';
import 'package:molefocs/presentation/widgets/header_widget.dart';
import 'package:molefocs/presentation/widgets/information_widget.dart';
import 'package:molefocs/presentation/widgets/title_langfoc_widget.dart';
import 'package:molefocs/presentation/widgets/title_listening_widget.dart';
import 'package:molefocs/presentation/widgets/title_reading_widget.dart';
import 'package:molefocs/presentation/widgets/title_speaking_widget.dart';
import 'package:molefocs/presentation/widgets/title_writing_widget.dart';

import 'home_speaking/speaking_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const <Widget>[
            HeaderWidget(),
            InformationWidget(),
            TitleSpeaking(),
            SpeakingHome(),
            TitleReading(),
            ReadingHome(),
            TitleListening(),
            ListeningHome(),
            TitleLangfoc(),
            LangfocHome(),
            TitleWriting(),
            WritingHome()
          ],
        ),
      ),
    );
  }
}
