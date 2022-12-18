
import 'package:cloud_firestore/cloud_firestore.dart';

class QuizQueCreator{
  static Future<Map> genQuiz(String quizID , int quePoin) async{
    late Map queData;
    await FirebaseFirestore.instance.collection("question").doc(quizID).collection("question").where("poin", isEqualTo: quePoin).get().then((value){
      //TASK  - GENERATE A RANDOM NUMBER BETWEEN 0 TO value.docs.length
      queData = value.docs.elementAt(0).data();
    });
    print(queData);
    return queData;
  }
}