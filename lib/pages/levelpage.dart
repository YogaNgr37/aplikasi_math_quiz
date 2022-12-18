part of 'pages.dart';

class LevelPage extends StatefulWidget {
  String QuizAbout;
  String quizID;
  LevelPage({
    required this.QuizAbout,
    required this.quizID,
  });

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/win.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "LEVEL KUIS",
            style: textStyle.copyWith(fontSize: 26),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 8,
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/santai.png"),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));
                            },
                            child: Text("Main"))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 8,
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/tegang.png"),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));
                            },
                            child: Text("Main"))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Card(
                  elevation: 8,
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/pusing.png"),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));
                            },
                            child: Text("Main"))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          ]
        ),

        /* body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                height: 50,
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (() {
                    
                  }), 
                  child: Text("Santai")),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                height: 50,
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (() {
                    
                  }), 
                  child: Text("Santai")),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                height: 50,
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (() {
                    
                  }), 
                  child: Text("Santai")),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ), */
      ),
    );
  }
}
