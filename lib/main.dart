import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_auth/Screens/home.dart';
import 'Screens/language.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

const themeColor = const Color(0xff063970);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    User firebaseUser = FirebaseAuth.instance.currentUser;
// Define a widget
    Widget firstWidget;

// Assign widget based on availability of currentUser
    if (firebaseUser != null) {
      firstWidget = HomeScreen();
    } else {
      firstWidget = ChooseLang();
    }
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'SFPro',
          primaryColor: themeColor
      ),
      home: firstWidget,
      debugShowCheckedModeBanner: false,
    );
  }
}
