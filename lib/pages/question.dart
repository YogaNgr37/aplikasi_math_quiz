part of 'pages.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("5 POIN"),centerTitle: true,),
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
              child: Text(style: textStyle.copyWith(fontSize: 20),textAlign: TextAlign.center,"Hasil penjumlahan dari -3a –6b + 7 dan 13a – (-2b) + 4 adalah ...."),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
              child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"A. 16a -8b + 11"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
              child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"B. 10a + 4b + 11"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
              child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"C. 10a -4b + 11"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
              child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"D. -16a -4b + 11"),
            ),
          ],
        ),
      ),
    );
  }
}