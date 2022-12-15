part of 'pages.dart';

class QuizIntro extends StatefulWidget {
  String QuizName;
  String QuizImage;
  String QuizMateri;
  String QuizDuration;
  String QuizAbout;
  String QuizId;
  QuizIntro({
    required this.QuizAbout,
    required this.QuizDuration,
    required this.QuizImage,
    required this.QuizName,
    required this.QuizMateri,
    required this.QuizId
  });

  @override
  _QuizIntroState createState() => _QuizIntroState();
}



class _QuizIntroState extends State<QuizIntro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(title: Text("KBC Quiz App"),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 40),
          child:

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.QuizName , textAlign: TextAlign.center, style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),)
                  ],),),


              Image.network(widget.QuizImage, fit: BoxFit.cover, height: 230 , width: MediaQuery.of(context).size.width,),
              Container(
                padding: EdgeInsets.all(18),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(width: 6,),
                        Text("Related To -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text(widget.QuizMateri , style: TextStyle(fontSize: 17),)
                  ],),
              ) ,
              Container(
                padding: EdgeInsets.all(18),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(width: 6,),
                        Text("Duration -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text("${widget.QuizDuration} Minutes" ,textAlign: TextAlign.left, style: TextStyle(fontSize: 17),)
                  ],),
              ) ,
              Container(
                padding: EdgeInsets.all(18),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.topic_outlined),
                        SizedBox(width: 6,),
                        Text("About Quiz -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text(widget.QuizAbout , style: TextStyle(fontSize: 17),)
                  ],),
              )
            ],)

          ,),
      ),
    );
  }
}