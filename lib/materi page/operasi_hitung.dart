part of 'materi.dart';

class OperasiHitung extends StatelessWidget {
  const OperasiHitung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text("Operasi Hitung",
        style: textStyle.copyWith(color: secondaryColor, fontSize: 24),),),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
          children: [
            //Penjumlahan
            Container(
              child: Text("Penjumlahan",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Jika jenis bilangan bulat yang sama dijumlahkan maka akan menghasilkan jenis bilangan yang sama. Artinya, jika penjumlahan dilakukan dengan bilangan bulat positif, maka hasilnya adalah bilangan bulat positif. Hal yang sama berlaku pada bilangan negatif. Namun, jika penjumlahan terjadi pada bilangan positif dan negatif. Maka jenisnya ditentukan dengan jenis bilangan bulat dengan nilai paling besar.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            //Pengurangan
            Container(
              child: Text("Pengurangan",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Dalam operasi pengurangan pada bilangan bulat, jika simbol minus '-' pada bilangan bulat bertemu dengan simbol pengurangan '-', maka hasil perhitungannya akan dijumlahkan.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            //Perkalian
            Container(
              child: Text("Perkalian",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Jika dua bilang positif dijumlahkan, maka akan menghasilkan bilangan bulat positif. Sementara, perkalian yang melibatkan dua bilangan bulat negatif akan menghasilkan bilangan bulat positif. Namun, jika bilang bulat positif dan bilangan bulat negatif dikalikan, maka hasilnya adalah bilangan bulat negatif.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            //Pembagian
            Container(
              child: Text("Pembagian",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Terlepas suatu bilangan positif atau negatif, jika dua bilangan bulat dengan jenis yang sama dibagi, maka akan menghasilkan bilangan bulat positif. Namun, jika membagi bilangan bulat positif dengan bilangan bulat negatif, maka hasilnya adalah bilangan bulat negatif. Konsepnya pada dasarnya sama dengan konsep operasi hitung perkalian.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Contoh Soal",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            Container(
              child: Image.asset('assets/images/operasi_hitung1.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung2.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung3.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung4.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung3.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung6.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/operasi_hitung7.png'),
              decoration: BoxDecoration(color: primaryColor, border: Border(top: BorderSide(width: 3,color: primaryColor), right: BorderSide(width: 3,color: primaryColor), left: BorderSide(width: 3,color: primaryColor), bottom: BorderSide(width: 3,color: primaryColor))),
            ),
            SizedBox(height: 20,),
          ],
        )),
    );
  }
}