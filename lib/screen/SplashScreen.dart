import 'package:flutter/material.dart';
import 'package:tasks1_flutter/value/ValueColor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then((value) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(seconds: 2), () {});

    return true;
  }

  void _navigateToHome() {

    Navigator.of(context).pushReplacementNamed('/ProfileScreen');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(ValueColor.BEIGE),
        height: double.infinity,
        width: double.infinity,
        child: Center(
                child: Image.asset('images/techBox.png'))
      ),
    );
  }
}
