import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled1/Custom/UserAccountDrawer.dart';

import 'MyProfile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //  late String mail = "";
    // late String image = "";
    // late String userName = "";
    int a = 0;
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.linearToSrgbGamma(),
                image: AssetImage("images/galata-kulesi_m.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Text(
                    'Favoriler',
                    style: GoogleFonts.libreCaslonDisplay(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 420,
                              height: 370,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "https://arkeofili.com/wp-content/uploads/2022/05/geceler.jpg"))),
                            ),
                          ),
                          Container(
                            child: Text(
                              "müze Adı",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlayCurve: Curves.easeInOutBack,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.75,
                    aspectRatio: 1.75,
                    initialPage: 1,
                  ),
                ),
              ],
            )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccontsDrawer(
                  userName: "Kullanıcı Adı",
                  mail: "gh@gmail.com",
                  image:
                      "https://banner2.cleanpng.com/20180612/hv/kisspng-computer-icons-designer-avatar-5b207ebb279901.8233901115288562511622.jpg"),
              ListTile(
                title: Text('Anasayfa'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text('Profilim'),
                onTap: () {
                  Get.to(() => ProfilPage(
                        name: "userName",
                        mail: "gh@gmail.com",
                        image:
                            "https://banner2.cleanpng.com/20180612/hv/kisspng-computer-icons-designer-avatar-5b207ebb279901.8233901115288562511622.jpg",
                      ));
                },
                leading: Icon(Icons.person),
              ),
              Divider(),
              ListTile(
                title: Text('Çıkış yap'),
                onTap: () {},
                leading: Icon(Icons.remove_circle),
              ),
            ],
          ),
        ));
  }
}
