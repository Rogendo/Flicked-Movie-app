import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'pages/main_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () => runApp(ProviderScope(
        child: MyApp(),
      )),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flicked",
      initialRoute: 'home',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      routes: {'home': (BuildContext _context) => MainPage()},
    );
  }
}
