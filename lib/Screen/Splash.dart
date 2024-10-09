import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wikusamakafe/Pages/create_account_pages.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => accpage()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                "logo.png",
              ),
              width: 200,
              height: 600,
            )
          ],
        ),
      ),
    );
  }
}
