import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycalculator/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    _goHome();
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }

  _goHome() async {
    await Future.delayed(Duration(seconds: 15), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black12, Colors.amber],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/calc.png',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}