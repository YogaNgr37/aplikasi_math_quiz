part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 20),
          children: [
            Container(
              child: Text(
                "SELAMAT DATANG di MATH QUIZ",
                style: textStyle.copyWith(
                    color: secondaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,),
            Container(
              child: Text(
                "Sudahkah anda bermain kuis hari ini?\n \n \n \nSebelum melakukan kuis anda bisa mempelajari materi terlebih dahulu.",
                style: textStyle.copyWith(
                  color: secondaryColor,
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
                        color: primaryColor)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
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
                        color: primaryColor)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
