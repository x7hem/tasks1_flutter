import 'package:flutter/material.dart';
import 'package:tasks1_flutter/screen/ProfileScreen.dart';
import 'package:flutter/services.dart';
import 'package:tasks1_flutter/screen/SplashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Color(0xffE5D9B6),
          )
      );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute:'/SplashScreen',
        routes: {

          '/ProfileScreen': (context) => ProfileScreen(),
          '/SplashScreen': (context) => SplashScreen(),
        }
    );
  }
}

