// ignore_for_file: unused_import, duplicate_import

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'model.dart';
import 'list.dart';
import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
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