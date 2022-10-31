import 'package:aplikasi_kuis_matematika/pages/pages.dart';
import 'package:aplikasi_kuis_matematika/shared/shared.dart';
import 'package:flutter/material.dart';

void main() {
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
      home: WelcomePage(),
    );
  }
}
