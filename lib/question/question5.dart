part of 'quest.dart';

class Question5 extends StatefulWidget {

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("TAHAP 5 - 25 POIN"),centerTitle: true,),
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
              child: Text(style: textStyle.copyWith(fontSize: 20),textAlign: TextAlign.center, "Hasil dari operasi berikut 325 – 125 : 5 + 100 x 3 adalah ...")
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong4()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"A. 1000"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Question6()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"B. 600"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong4()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"C. 200"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong4()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"D. 800"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}