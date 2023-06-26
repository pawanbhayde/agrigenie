import 'package:agrigenie/firebase_options.dart';
import 'package:agrigenie/pages/cropinfopage.dart';
import 'package:agrigenie/pages/fertilizerinfopage.dart';
import 'package:agrigenie/pages/loginpage.dart';
import 'package:agrigenie/pages/navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainNavigation();
          } else {
            return AgricultureLoginPage();
          }
        },
      ),
      routes: {
        '/cropInfo': (context) => CropInfoPage(),
        '/fertilizerInfo': (context) => FertilizerInfoPage(),
      },
    );
  }
}
