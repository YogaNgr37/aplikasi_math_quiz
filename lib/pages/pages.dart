import 'dart:async';
import 'dart:math';

import 'package:aplikasi_kuis_matematika/models/auth.dart';
import 'package:aplikasi_kuis_matematika/models/home_fire.dart';
import 'package:aplikasi_kuis_matematika/models/localdb.dart';
import 'package:aplikasi_kuis_matematika/models/question_model.dart';
import 'package:aplikasi_kuis_matematika/models/quiz1_model.dart';
import 'package:aplikasi_kuis_matematika/question/quest.dart';
import 'package:aplikasi_kuis_matematika/shared/shared.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:aplikasi_kuis_matematika/materi page/materi.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import '../models/user_model.dart';


part 'welcomepage.dart';
part 'homepage.dart';
part 'materipage.dart';
part 'login.dart';
part 'register.dart';
part 'sidenavbar.dart';
part 'point_sidebar.dart';
part 'win.dart';
part 'profile.dart';
part 'levelpage.dart';
part 'quizintro.dart';
