part of 'materi.dart';

class BangunDatar extends StatelessWidget {
  const BangunDatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Bangun Datar",
          style: textStyle.copyWith(color: Colors.white, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
          children: [
            Container(
              child: Text("Bangun Datar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 28, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Bangun datar dapat didefinisikan sebagai bangun rata yang mempunyai dua dimensi yaitu panjang dan lebar, tetapi tidak mempunyai tinggi atau tebal. Berikut ini adalah jenis-jenis bangun datar umumnya.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("1. Persegi",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Image.asset('assets/images/bangun_datar1.png')
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Bangun Datar Persegi adalah persegi panjang yang semua sisinya mempunyai panjang yang sama dan untuk Rumus Luas dan Keliling Persegi bisa kalian lihat dibawah ini :",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 5,),
            Container(
              child: Image.asset('assets/images/bangun_datar2.png')
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("2. Persegi Panjang",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Image.asset('assets/images/bangun_datar3.png')
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Bangun Datar Persegi Panjang adalah suatu bangun datar yg memiliki sisi yang berhadapan yang sama panjang dan mempunyai 4 buah titik sudut yang siku – siku. Untuk Rumus Luas Bangun Datar Persegi Panjang dan Rumus Keliling Bangun Datar Persegi Panjang bisa kalian lihat dibawah ini :",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 5,),
            Container(
              child: Image.asset('assets/images/bangun_datar4.png')
            ),
            SizedBox(height: 20,),
          ],
        )),
    );
  }
}
