import 'package:bullcapital/views/home.dart';
import 'package:bullcapital/views/profil.dart';
import 'package:bullcapital/views/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'ProductSans'),
      initialRoute: '/profil',
      routes: {
        '/': (context) => const SignUp(),
        '/home': (context) => const MyHomePage(),
        '/profil': (context) => const ProfilPage()
      },
    );
  }
}
