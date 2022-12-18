part of 'lose.dart';

class Wrong5 extends StatelessWidget {
  const Wrong5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/wrong.png",), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MAAF",
                  style: textStyle.copyWith(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "JAWABAN ANDA SALAH",
                  style: textStyle.copyWith(
                    color: Colors.white,
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Anda Mendapatkan",
                  style: textStyle.copyWith(
                    color: Colors.white,
                      fontSize: 13, fontWeight: FontWeight.w400),
                ),
                Text(
                  "25 POIN",
                  style: textStyle.copyWith(
                    color: Colors.white,
                      fontSize: 28, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25,
                ),
                Icon(Icons.error_outline, size: 100,color: Colors.white,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text(
                      "Kembali",
                      style: textStyle.copyWith(fontSize: 14),
                    ))
              ],
            )),
      ),
    );
  }
}
