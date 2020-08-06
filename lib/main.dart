import 'package:chat/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


const MaterialColor primary = const MaterialColor(
  0xff0E0909,
  const <int, Color>{
    50: const Color(0xff0E0909),
    100: const Color(0xff0E0909),
    200: const Color(0xff0E0909),
    300: const Color(0xff0E0909),
    400: const Color(0xff0E0909),
    500: const Color(0xff0E0909),
    600: const Color(0xff0E0909),
    700: const Color(0xff0E0909),
    800: const Color(0xff0E0909),
    900: const Color(0xff0E0909),
  },
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
        fontFamily: "montserrat",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        '/': (context) => LoginPage(),
      },
    );
  }
}