import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/Pages/Cart_page.dart';
import 'package:wikusamakafe/Pages/admin.dart';
import 'package:wikusamakafe/Pages/kasir.dart';
import 'package:wikusamakafe/Pages/user.dart';
import 'package:wikusamakafe/Screen/Splash.dart';
import 'package:wikusamakafe/models/cart.dart';
import 'package:wikusamakafe/models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/user': (context) => user(),
        '/admin': (context) => Admin(),
        '/kasir': (context) => kasir(),
        '/cart': (context) => cartpage(),
      },
    );
  }
}
