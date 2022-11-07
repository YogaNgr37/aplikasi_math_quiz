part of 'materi.dart';

class BangunDatar extends StatelessWidget {
  const BangunDatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        title: Text("Bangun Datar",
        style: textStyle.copyWith(color: secondaryColor, fontSize: 24),),),
      body: SafeArea(child: Text("bangun datar")),
    );
  }
}