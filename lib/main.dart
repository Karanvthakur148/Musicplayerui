import 'package:flutter/material.dart';
import 'package:untitled6/player_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,

      ),
      home: PlayerPage(),
    );
  }
}
