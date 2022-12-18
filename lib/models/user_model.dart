import 'package:aplikasi_kuis_matematika/models/localdb.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? poin;
  String? rank;
  String? level;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.poin, this.rank, this.level});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      poin: map['poin'],
      rank: map['rank'],
      level: map['level']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'poin' : "0",
      'rank' : "NA",
      'level' : "1",
    };
  }
}



  updatePoin(int amount) async{
    if(amount != 2500){
      final FirebaseAuth _myauth = FirebaseAuth.instance;

      await FirebaseFirestore.instance.collection("users").doc(_myauth.currentUser!.uid).get().then((value) async{
        await LocalDB.savePoin((value.data()!["poin"] + amount).toString());
        await FirebaseFirestore.instance.collection("users").doc(_myauth.currentUser!.uid).update(
            {"money" : value.data()!["money"] + amount})  ;
      });
    }

    

  }
