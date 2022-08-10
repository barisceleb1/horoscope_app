import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';

import 'burc_listesi.dart';

void main() {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> op = {1: MyApp(), 2: MyApp()};
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomSplash(
      imagePath: 'assets/images/resim.jpg',
      backGroundColor: Colors.black,
      animationEffect: 'zoom-in',
      logoSize: 200,
      home: MyApp(),
      customFunction: duringSplash,
      duration: 2500,
      type: CustomSplashType.StaticDuration,
      outputAndHome: op,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.cyan),
      home: HoroscopeList(),
    );
  }
}
