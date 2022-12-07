part of 'pages.dart';

class WinPage extends StatefulWidget {
  const WinPage({super.key});

  @override
  State<WinPage> createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {

  late ConfettiController confettiController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      initController();
    });
    confettiController.play();
  }

  void initController() {
    confettiController = ConfettiController(
      duration: const Duration(seconds: 1)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/win.png",), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SELAMAT!", style: textStyle.copyWith(fontSize: 30, fontWeight: FontWeight.bold,),),
                Text("JAWABAN ANDA BENAR",style: textStyle.copyWith(fontSize: 17, fontWeight: FontWeight.w500),),
                SizedBox(height: 15,),
                Text("Anda Mendapatkan",style: textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w400),),
                Text("5 POIN",style: textStyle.copyWith(fontSize: 28, fontWeight: FontWeight.w700),),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("assets/images/congrats.png")),
                ElevatedButton(onPressed: () {
                  
                }, child: Text("Next", style: textStyle.copyWith(fontSize: 14),))
              ],
            )),
            buildConfettiWidget(confettiController, pi / 2),
          ],
        ),
      ),
    );
  }

Align buildConfettiWidget(controller, double blastDirection){
  return Align(alignment: Alignment.topCenter,
  child: ConfettiWidget(
    maximumSize: Size(40, 30),
    shouldLoop: false,
    confettiController: controller,
    blastDirectionality: BlastDirectionality.explosive,
    maxBlastForce: 20,
    minBlastForce: 8,
    emissionFrequency: 1,
    numberOfParticles: 8,
    gravity: 0.1,
  ),);
}

}
