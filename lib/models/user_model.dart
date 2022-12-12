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
