import 'package:aronets_portfolio/presentation/resume/screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aronets Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResumeScreen(),
    );
  }
}
