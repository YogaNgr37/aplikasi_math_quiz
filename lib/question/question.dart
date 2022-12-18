part of 'quest.dart';

class Question extends StatefulWidget {

  //String quizID;
  //int quePoin;

  //Question(String quizId, int i, {required this.quizID,required this.quePoin});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  /*QuestionModel questionModel = new QuestionModel();

  genQue() async {
    await QuizQueCreator.genQuiz(widget.quizID, widget.quePoin).then((queData){

      setState(() {
        questionModel.question = queData["question"];
      questionModel.correctAnswer= queData["correctAnswer"];

      List options = [
        queData["opt1"],
        queData["opt2"],
        queData["opt3"],
        queData["opt4"],
      ];
      options.shuffle();

      questionModel.option1 = options[0];
      questionModel.option2 = options[1];
      questionModel.option3 = options[2];
      questionModel.option4 = options[3];
      });
      
    });
  }


  bool optALocked = false;
  bool optBLocked = false;
  bool optCLocked = false;
  bool optDLocked = false;
//CHANGE THE TIMER SECONDS ACCORDING TO MONEY WON
  int maxSeconds =  30;
  int seconds = 30;
  Timer? timer;

  initState(){
    super.initState();
    genQue();
  }*/
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("TAHAP 1 - 5 POIN"),centerTitle: true,),
        drawer: PointSideBar(),
        floatingActionButton: ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: ((context) => HomePage())));
        }, child: Text(style: textStyle.copyWith(fontSize: 18),"Keluar")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(strokeWidth: 7,backgroundColor: Colors.green, color: Colors.white,),
                  Center(child: Text(style: textStyle.copyWith(color: Colors.white,fontSize: 35, fontWeight: FontWeight.bold),"120"))
                ],
              )),
              SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(17),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Text(style: textStyle.copyWith(fontSize: 20),textAlign: TextAlign.center, "Hasil penjumlahan dari -3a –6b + 7 dan 13a – (-2b) + 4 adalah ....")
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WrongPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"A. 16a -8b + 11"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WrongPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"B. 10a + 4b + 11"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Question2()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"C. 10a -4b + 11"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WrongPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"D. -16a -4b + 11"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}