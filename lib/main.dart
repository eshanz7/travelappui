import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          fontFamily: 'Outfit',
          textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
          backgroundColor: backgroundColor),
      home: const MainPage(),
    );
  }
}
