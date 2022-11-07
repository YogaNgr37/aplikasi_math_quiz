part of 'materi.dart';

class Aljabar extends StatelessWidget {
  const Aljabar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text(
          "Aljabar",
          style: textStyle.copyWith(color: secondaryColor, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
          children: [
            Container(
              child: Text("Sifat-Sifat Dalam Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 28, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Sebelum mengenal lebih jauh mengenai operasi aljabar, mari kita ketahui dulu sifat-sifat aljabar.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Sifat Komutatif",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Sifat aljabar yang berlaku pada penjumlahan dan perkalian dalam aljabar, contohnya \n\n   a + b = b + a \n\nSama halnya dalam bilangan, hasil nilai a ditambah b akan sama dengan b ditambahkan dengan a, misalnya nilai a=1 dan nilai b=2, maka mau 1+2 ataupun 2+1 hasilnya akan sama-sama 3. Begitu juga dengan perkalian \n\n   a.b = b.a \n\nSifat yang ini pastinya elo udah tau lah yaa, waktu di SD elo belajar perkalian pasti kalian sadar bahwa 2×1 dan 1×2 hasilnya juga sama-sama 2.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Sifat Asosiatif",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Sama halnya dengan sifat komutatif, sifat asosiatif juga berlaku pada penjumlahan dan perkalian dalam aljabar matematika, namun dengan bentuk yang berbeda, misalnya: \n\n   (a + b) +c = a + (b + c) \n\nDi mana dalam konsep aljabar dalam penjumlahan seperti di atas, peletakan tanda kurung baik yang dikurung (a+b) aja, maupun, (b+c) akan menghasilkan hasil yang sama. Sama halnya dengan perkalian, misalnya: \n\n   (a.b)c = a(b.c)",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Sifat Distributif",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Berbeda dengan sifat komutatif maupun asosiatif, sifat distributif merupakan sifat yang mengandung operasi perkalian menjadi penjumlahan atau pengurangan, sifat ini merupakan sifat aljabar SMA yang akan paling sering kita temukan dalam operasi perhitungan aljabar \n\n   a(b + c) = (a.b) + (a.c) (dalam penjumlahan) \n\n   a(b – c)  = (a.b) – (a.c) (dalam pengurangan)",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Derajat dan Suku Jenis Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 28, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Jika pada sifat kita baru mempelajari tentang sifat-sifatnya, Coba perhatikan contoh bentuk aljabar berikut:",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            Container(
              child: Image.asset('assets/images/aljabar1.png')
            ),
            Container(
              child: Text("Jika kalian perhatikan bentuk aljabar di atas, maka dari persamaan itu sendiri kita bisa menemukan 2 hal yaitu derajatnya dan juga suku jenisnya. \n\nDerajat dalam aljabar adalah nilai pangkat tertinggi yang dimiliki oleh variabel di mana dalam persamaan di atas itu variabel yang digunakan adalah “x”. Maka, dalam menentukan derajat suatu bentuk aljabar yang perlu kita lihat hanya pangkat variabelnya, dan dalam bentuk aljabar di atas derajat persamaannya adalah 3. \n\nSementara itu, suku dalam aljabar itu merupakan total elemen yang terkandung dalam suatu operasi bentuk aljabar.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            Container(
              child: Image.asset('assets/images/aljabar2.png')
            ),
            Container(
              child: Text("Perhatikan penomoran di atas, angka di bawah 1, 2, 3, dan 4, itu bukan menandakan dibagi atau per, melainkan untuk menandai jumlah sukunya, dan persamaan di atas memiliki jumlah 4 suku. Tidak hanya itu, dalam aljabar itu sendiri suku dibedakan menjadi 2 jenis, yaitu suku sejenis, dan suku tak sejenis. \n\nSecara sederhana bisa kita artikan bahwa: \n\nSuku Sejenis: suku-suku yang memiliki variabel yang sama dan pangkat yang sama pula. Misalnya, 2x, 3x, x, 10x, dan lain-lain, di mana semuanya mengandung variabel x dan memiliki pangkat 1.\n\nSuku Tak Sejenis: kebalikan dari suku sejenis, yaitu suku-suku yang memiliki variabel yang berbeda, atau variabel yang sama namun memiliki pangkat yang berbeda juga tergolong dalam suku ini. Misalnya, 2x,  3xy,  4y.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Operasi Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 28, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Meskipun aljabar berhubungan nya sama variabel-variabel alias ada huruf-hurufnya, tapi bagaimanapun aljabar itu merupakan cabang ilmu matematika, jadi pastinya tetap ada penjumlahan, pengurangan, perkalian, pembagian, bahkan pemfaktoran.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Penjumlahan dan Pengurangan Bentuk Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Khusus untuk penjumlahan dan pengurangan dalam bentuk aljabar hanya berlaku untuk suku yang sejenis, biar langsung paham kita coba langsung di contoh bentuk aljabar berikut. \n\nSederhanakan operasi aljabar berikut ini! \n\n2x + 5xy – 3x =….. \n\nKalau kita perhatikan dari bentuk aljabar di atas, maka yang bisa kita hitung hanya 2x – 3x = -1x atau biasa ditulis -x, lalu bagaimana dengan 5xy? \n\nKarena dia memiliki variabel yang berbeda, dan satu-satunya yang memiliki variabel “xy” maka biarkan saja, jadi hasilnya: \n\n-x + 5xy \n\nPerlu diingat bahwa meskipun sama-sama ada “x” nya, namun variabel “xy” berbeda dengan variabel “x”, variabel “xy” hanya bisa dikurang maupun dijumlahkan oleh sesama variabel “xy”.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Pangkat dan Perkalian Bentuk Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Nah kalo yang bentuk aljabar penjumlahan dan pengurangan cuma bisa untuk suku yang sejenis, hal ini gak berlaku kalo di perkalian dan perpangkatan bentuk aljabar, dan mulai dari sini, mulai agak susah guys. Jadi kita coba pelan-pelan ya, kita coba latihan dari bentuk perkalian aljabar dasar dan yang paling umum dulu. \n\n(a+b)(a-b) \n\nGimana penyelesaiannya? Kita coba jabarin satu-satu ",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            Container(
              child: Image.asset('assets/images/aljabar3.png')
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Mudah bukan? Sekarang kita coba jika perkalian dan pembagian yang ada pangkatnya:",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            Container(
              child: Image.asset('assets/images/aljabar4.png')
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Nah, biar makin gampang, kalian bisa ingat rumus aljabar dasar di bawah ini.",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            Container(
              child: Image.asset('assets/images/aljabar5.png')
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Faktorisasi Aljabar",
              style: textStyle.copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Nah, di faktorisasi kita bakal menggunakan konsep FPB dan juga sifat dari aljabar yang udah gue bahas di atas tadi yaitu sifat distributif. Sekarang biar gampang, kita coba faktorisasi pake angka dulu, misalnya:",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/aljabar6.png')
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Mungkin beberapa dari kalian langsung mikir, ribet amat tinggal tambahin aja pake difaktor-faktorin segala, disini yang kita pelajari adalah proses pemfaktoran nya di mana faktor yang akan kita ambil adalah yang terbesar yaitu 12 dan 7. Sekarang kita coba dengan variabel, misalnya:",
              style: textStyle.copyWith(color: primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Image.asset('assets/images/aljabar7.png')
            ),
          ],
        )
      ),
    );
  }
}
