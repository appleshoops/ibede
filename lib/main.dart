// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:ibede/themeProvider.dart';
import 'model.dart';
import 'list.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor:  const Color.fromARGB(255, 37, 37, 37),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ibis.png',
                fit: BoxFit.contain,
                height: 32,
              )
            ],
          ),
        ),
        body: ApodList(model: ApodModel()),
      ),
    );
  }
}