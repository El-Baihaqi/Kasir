import 'package:flutter/material.dart';
import 'package:wikusamakafe/Pages/user.dart';
import 'package:wikusamakafe/Screen/Splash.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Splash(),
      routes: {
        '/user': (context) => user(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
