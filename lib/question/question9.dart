part of 'quest.dart';

class Question9 extends StatefulWidget {

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("TAHAP 9 - 45 POIN"),centerTitle: true,),
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
              child: Text(style: textStyle.copyWith(fontSize: 20),textAlign: TextAlign.center, "Sebuah taman berbentuk belahketupat dengan panjang diagonal 10 m dan 24 m. Pak Soleh berjalan mengelilingi taman tersebut sebanyak 3 kali. Jarak tempuh pak Soleh adalah ...")
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Question10()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"A. 156 m"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong8()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"B. 200 m"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong8()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"C. 208 m"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrong8()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(35)),
                child: Text(style: textStyle.copyWith(fontSize: 16),textAlign: TextAlign.center,"D. 240 m"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}