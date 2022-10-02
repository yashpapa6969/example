import 'package:bonfire/bonfire.dart';
import 'package:example/lpc/lpc_game.dart';
import 'package:example/screens/splash.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();

  }


  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );


  void _navTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
