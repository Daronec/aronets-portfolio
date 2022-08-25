import 'package:aronets_portfolio/presentation/resume/screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: '1:126188264955:web:e54088828e34fd91613f5e',
      apiKey: 'AIzaSyDjjecyLji25--bSAFVkWeiCq02oWsVPQM',
      projectId: 'aronets-web',
      databaseURL: 'https://aronets-web-default-rtdb.firebaseio.com/',
      messagingSenderId: '126188264955',
    ),
  );

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
      locale: const Locale('ru_RU'),
      home: const ResumeScreen(),
    );
  }
}
