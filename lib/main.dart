import 'package:flutter/material.dart';
import 'package:resumeapp/allscreens/achive.dart';
import 'package:resumeapp/allscreens/addskills.dart';
import 'package:resumeapp/allscreens/education.dart';
import 'package:resumeapp/allscreens/exprince.dart';
import 'package:resumeapp/allscreens/imfo.dart';
import 'package:resumeapp/allscreens/language.dart';
import 'package:resumeapp/allscreens/logo.dart';
import 'package:resumeapp/allscreens/objective.dart';
import 'package:resumeapp/allscreens/pdf.dart';
import 'package:resumeapp/allscreens/profile.dart';
import 'package:resumeapp/allscreens/project.dart';
import 'package:resumeapp/allscreens/reference.dart';
import 'package:resumeapp/allscreens/selectlanguage.dart';
import 'package:resumeapp/allscreens/view.dart';
import 'package:resumeapp/cvmakee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
       //

      // initialRoute: '/view',
      routes: {
        '/':(context) => logo(),
        '/language':(context) => language(),
        '/view':(context) => view(),
        '/cv':(context) => cvmaker(),
        '/profile':(context) => profile(),
        '/imfo':(context) => imfo(),
        '/obj':(context) => objective(),
        '/add':(context) => addskils(),
        '/edu':(context) => education(),
        '/exp':(context) => exprince(),
        '/pdf':(context) => pdf(),
        '/ref':(context) => reference(),
        '/project':(context) => Project(),
        '/achive':(context) => achive(),
        '/op':(context) => opLanguage(),
      },

    );
  }
}

