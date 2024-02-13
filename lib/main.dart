// ignore_for_file: duplicate_import

import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/SplashScreen.dart';
import 'package:flutter_application_1/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Firebase.apps.isEmpty) {
    Platform.isAndroid
        ? await Firebase.initializeApp(
            options: const FirebaseOptions(
              apiKey: 'AIzaSyCvR8RO65PzAjbEFObB3X7pcFdxKbPfRCA',
              appId: '1:752393951416:android:1311f3b93b8eaf49177c4d',
              messagingSenderId: '752393951416',
              projectId: 'signcom-sample',
            ),
          )
        : await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignCom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // Define routes
        '/': (context) => SplashScreen(), // Define the SplashScreen route
        '/home': (context) => HomePage(), // Define the HomePage route
        // Add other routes as needed
      },
    );
  }
}
