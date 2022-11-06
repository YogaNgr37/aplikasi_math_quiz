part of 'pages.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text(
          'Materi',
          style: textStyle.copyWith(fontSize: 24),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Card(
            elevation: 50,
            shadowColor: primaryColor,
            color: Color(0xFF4FA095),
            child: SizedBox(
              width: 300,
              height: 225,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'OPERASI HITUNG',
                      style: textStyle.copyWith(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dalam matematika, operasi hitung didefinisikan sebagai perlakuan terhadap sebuah bilangan, yakni berupa penjumlahan, pengurangan, perkalian, pembagian, dan sebagainya.',
                      style: textStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Pelajari"))
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Card(
            elevation: 50,
            shadowColor: primaryColor,
            color: Color(0xFF4FA095),
            child: SizedBox(
              width: 300,
              height: 245,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'ALJABAR',
                      style: textStyle.copyWith(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Aljabar adalah salah satu cabang dari ilmu matematika yang identik dengan penyelesaian masalah dalam matematika dengan menggunakan atau mengandung huruf-huruf atau yang biasa kita sebut sebagai variabel.',
                      style: textStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Pelajari"))
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Card(
            elevation: 50,
            shadowColor: primaryColor,
            color: Color(0xFF4FA095),
            child: SizedBox(
              width: 300,
              height: 210,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'BANGUN DATAR',
                      style: textStyle.copyWith(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bangun datar dapat didefinisikan sebagai bangun rata yang mempunyai dua dimensi yaitu panjang dan lebar, tetapi tidak mempunyai tinggi atau tebal.',
                      style: textStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Pelajari"))
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          Card(
            elevation: 50,
            shadowColor: primaryColor,
            color: Color(0xFF4FA095),
            child: SizedBox(
              width: 300,
              height: 245,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'POLA BILANGAN',
                      style: textStyle.copyWith(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pola mengandung makna bentuk atau susunan yang tetap dan Bilangan mengandung makna satuan jumlah yang merujuk pada angka. Jadi Pola Bilangan adalah bentuk atau susunan yang tetap pada suatu angka.',
                      style: textStyle.copyWith(
                        fontSize: 15,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Pelajari"))
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
