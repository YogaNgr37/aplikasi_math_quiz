part of 'pages.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(21, 52, 98, 1),
        child: ListView(
          //padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.white,),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text(style: textStyle.copyWith(color: Colors.white),"${loggedInUser.firstName} ${loggedInUser.secondName}"),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.monetization_on, color: Colors.white,),
                          Text(style: textStyle.copyWith(color: Colors.white),"5000")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(style: textStyle.copyWith(color: Colors.white, fontSize: 16),"Leaderboard - Peringkat 10"),
            ),
            SizedBox(height: 48,),
            listItem(label: "Daily Quiz", icon: Icons.quiz),
            listItem(label: "Leaderboard", icon: Icons.leaderboard),
            listItem(label: "How to Use", icon: Icons.question_answer),
            listItem(label: "About Us", icon: Icons.face)
            ],
        ),
      ),
    );
  }

  Widget listItem({required String label, required IconData icon}) {
    final color = Colors.white;
    final hovercolor = Colors.white60;

    return ListTile(
      leading: Icon(icon, color: color),
      hoverColor: hovercolor,
      title: Text(label, style: textStyle.copyWith(color: Colors.white,fontSize: 16),),
      onTap: (() {}),
    );
  }
}
