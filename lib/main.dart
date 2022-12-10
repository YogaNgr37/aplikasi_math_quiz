import 'package:aplikasi_kuis_matematika/pages/pages.dart';
import 'package:aplikasi_kuis_matematika/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorPalette.blueColor,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
      ),
      home: ProfilePage(),
    );
  }
}
