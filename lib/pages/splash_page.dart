// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({
    required Key key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (_) => widget.onInitializationComplete(),
    );
  }

  Future<void> _setup(BuildContext _context) async {
    final getIt = GetIt.instance;
// access to file
    final configFile = await rootBundle.loadString('assets/config/main.json');
// read the accessed file
    final configData = jsonDecode(configFile);
  }

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: "Flicked",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
