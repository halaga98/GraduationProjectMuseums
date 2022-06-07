import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:museumproject/BottomNavigator.dart';
import 'package:museumproject/Pages/Introduction/Inroduction.dart';
import 'package:shared_preferences/shared_preferences.dart';

late bool a = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(App());
  });
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late int fg;
  Prefs() async {
    final SharedPreferences prefs = await _prefs;
    if (prefs.getBool("key") == null) {
      prefs.setBool("key", true);
      a = false;
    } else {
      a = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    Prefs();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MuseumProject',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.grey,
          appBarTheme: AppBarTheme(color: Colors.grey.shade500)),
      home: (a == true) ? BottomNavigator() : Introduction(),
    );
  }
}
