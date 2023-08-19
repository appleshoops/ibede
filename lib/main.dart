import 'package:flutter/material.dart';
import 'model.dart';
import 'list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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