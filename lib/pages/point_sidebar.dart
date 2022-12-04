part of 'pages.dart';

class PointSideBar extends StatefulWidget {
  const PointSideBar({super.key});

  @override
  State<PointSideBar> createState() => _PointSideBarState();
}

class _PointSideBarState extends State<PointSideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          SizedBox(height: 50,),
          Text(style: textStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,"PEROLEHAN POINT"),
          SizedBox(height: 20,),
          ListView.builder(
            shrinkWrap: true,
            reverse: true,
            itemCount: 10,
            itemBuilder: (context, index) {
            return ListTile(title: Text(style: textStyle.copyWith(fontSize: 16),"${(5)*(index+1)} POIN"),trailing: Icon(Icons.circle),);
          })
        ],
      )
      /*SafeArea(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10, 
              itemBuilder: (context, index) {
              return ListTile();
            },)
          ],
        )),*/
    );
  }
}