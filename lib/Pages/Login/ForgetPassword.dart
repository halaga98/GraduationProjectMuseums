import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset("images/big-museum.png"),
        ),
        title: Text("Şifre Değiştirme"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: TextField(
                controller: _emailController,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(300), right: Radius.circular(300)),
              ),
              tileColor: Colors.grey,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  width: 150,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey, width: 2),
                      //color: colorPrimaryShade,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                        child: Text(
                      "Gönder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
