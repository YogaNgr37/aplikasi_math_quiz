part of 'materi.dart';

class PolaBilangan extends StatelessWidget {
  const PolaBilangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text("Pola Bilangan",
        style: textStyle.copyWith(color: secondaryColor, fontSize: 24),),),
      body: SafeArea(child: Text("pola bilangan")),
    );
  }
}