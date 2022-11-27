part of 'materi.dart';

class PolaBilangan extends StatelessWidget {
  const PolaBilangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Pola Bilangan",
        style: textStyle.copyWith(color: Colors.white, fontSize: 24),),),
      body: SafeArea(child: Text("pola bilangan")),
    );
  }
}