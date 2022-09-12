import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:aronets_portfolio/firebase_options.dart';
import 'package:aronets_portfolio/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  AppMetrica.activate(const AppMetricaConfig(
    "f75ebd0f-50d8-4125-9595-0579d840a911",
    logs: true,
  ));
  runApp(const App());
}
