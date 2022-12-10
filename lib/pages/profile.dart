part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_add)),
        ],
        title: Text(
          "Profile",
          style: textStyle.copyWith(fontSize: 29),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              padding: EdgeInsets.only(top: 40),
              height: 350,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80"),
                        radius: 50,
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
                          child: Icon(Icons.edit),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Yoga Nugroho",
                    style: textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "45",
                            style: textStyle.copyWith(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 42,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Level",
                            style: textStyle.copyWith(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "#10",
                            style: textStyle.copyWith(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 42,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Rank",
                            style: textStyle.copyWith(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Leaderboard",
              style: textStyle.copyWith(fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: SizedBox(
                height: 300,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Yoga Nugroho"),
                        ],
                      ),
                      leading: Text("#${index + 1}", style: textStyle.copyWith(fontWeight: FontWeight.bold),),
                      trailing: Text(
                          "${(20000 / (index + 1)).toString().substring(0, 5)}", style: textStyle.copyWith(fontWeight: FontWeight.bold),),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(thickness: 1, color: primaryColor, indent: 10, endIndent: 10,),
                  itemCount: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
