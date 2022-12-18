

import 'package:aplikasi_kuis_matematika/pages/pages.dart';
//import 'package:aplikasi_kuis_matematika/screen/home.dart';
//import 'package:aplikasi_kuis_matematika/screen/login.dart';
//import 'package:aplikasi_kuis_matematika/service/localdb.dart';
import 'package:aplikasi_kuis_matematika/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:overlay_support/overlay_support.dart';

import 'firebase_options.dart';

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogIn = false;

  getLoggedInState() async {
    await LocalDB.getUserID().then((value) {
      setState(() {
        isLogIn = value.toString() != "null";
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getLoggedInState();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KBC Quiz',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: isLogIn ? Home() : Login(),
      ),
    );
  }
}*/








// backup
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
      home: LoginScreen(),
    );
  }
}
