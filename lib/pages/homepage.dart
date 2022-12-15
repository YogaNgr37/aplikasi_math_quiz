part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  late List quiz;

  getquiz() async {
    await HomeFire.getquiz().then((returned_quiz) {
      setState(() {
        quiz = returned_quiz;
      },);
    });
  }

  @override
  void initState() {
    super.initState();
    getquiz();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(style: textStyle.copyWith(fontSize: 26), "MATH QUIZ"),
      ),
      drawer: SideNav(),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: ListView(
          children: [
            Column(
              children: [
                CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/aljabar.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/operasihitung.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/bangundatar.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/polabilangan.png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: TextButton(
                        child: Text(
                          "MATERI",
                          style: textStyle.copyWith(
                              color: primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MateriPage()));
                        }),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MateriPage()));
                        },
                        icon: Icon(Icons.arrow_forward_rounded))
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "assets/images/operasihitung.png"),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        OperasiHitung())));
                                          },
                                          child: Text("Pelajari"))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/aljabar.png"),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        Aljabar())));
                                          },
                                          child: Text("Pelajari"))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "KUIS",
                        style: textStyle.copyWith(
                            color: primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          "assets/images/quiz.jpg"),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        LevelPage())));
                                          },
                                          child: Text("Mainkan"))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      /*body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(24, 10, 24, 20),
          children: [
            Container(
              child: Text(
                "SELAMAT DATANG,\n${loggedInUser.firstName} ${loggedInUser.secondName}",
                style: textStyle.copyWith(
                    color: primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,),
            Container(
              child: Text(
                "Mari bermain kuis!",
                style: textStyle.copyWith(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MateriPage()));
                },
                child: Text("Materi",
                    style: textStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 * defaultMargin,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Kuis",
                    style: textStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}
