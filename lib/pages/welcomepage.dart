part of 'pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  bool _hide = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: EdgeInsets.fromLTRB(24, 100, 24, 20),
            children: [
              Image.asset(
                'assets/images/welcome_image.png',
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Selamat Datang di Math Quiz",
                style: dangerTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Wrap(
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40))),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: defaultMargin),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Registrasi,",
                                                    style: textStyle.copyWith(
                                                      fontSize: 30,
                                                      color: primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Silahkan isi data diri anda",
                                                    style: textStyle.copyWith(
                                                      fontSize: 16,
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      size: 30,
                                                      color: primaryColor,
                                                    )),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "Masukkan nama anda",
                                                labelText: "Nama",),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "Masukkan umur anda",
                                                labelText: "Umur",),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "user@example.com",
                                                labelText: "Email",),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            obscureText: _hide,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "password",
                                                labelText: "Password",
                                                suffixIcon: InkWell(
                                                  onTap: _toogleUsernameView,
                                                  child: Icon(
                                                    _hide ?
                                                    Icons
                                                      .visibility_outlined :
                                                      Icons.visibility_off_outlined),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Daftar",
                                                  style: textStyle.copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: secondaryColor)),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("Sudah memiliki akun? ", style: textStyle.copyWith(
                                                color: primaryColor,
                                                fontSize: 18,
                                              ),),
                                              Text(" Masuk", style: textStyle.copyWith(
                                                color: Colors.red,
                                                fontSize: 18,
                                              ),)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                        });
                  },
                  child: Text("Buat Akun",
                      style: textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Wrap(
                              children: [
                                Container(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40))),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: defaultMargin),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Login",
                                                    style: textStyle.copyWith(
                                                      fontSize: 30,
                                                      color: primaryColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Center(
                                                child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      size: 30,
                                                      color: primaryColor,
                                                    )),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "user@example.com",
                                                labelText: "Email",),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            obscureText: _hide,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                hintText: "password",
                                                labelText: "Password",
                                                suffixIcon: InkWell(
                                                  onTap: _toogleUsernameView,
                                                  child: Icon(
                                                    _hide ?
                                                    Icons
                                                      .visibility_outlined :
                                                      Icons.visibility_off_outlined),
                                                )),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),

                                          SizedBox(
                                            height: 20,
                                          ),

                                          Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                                              },
                                              child: Text("Masuk",
                                                  style: textStyle.copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: secondaryColor)),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("Belum memiliki akun? ", style: textStyle.copyWith(
                                                color: primaryColor,
                                                fontSize: 18,
                                              ),),
                                              Text(" Daftar", style: textStyle.copyWith(
                                                color: Colors.red,
                                                fontSize: 18,
                                              ),)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                        });
                  },
                  child: Text("Masuk",
                      style: textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: secondaryColor, width: 3),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ],
          ),
        ));
  }

  void _toogleUsernameView(){
    setState(() {
      _hide = !_hide;
    },);
  }
}
