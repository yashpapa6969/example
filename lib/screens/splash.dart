import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';


import 'package:example/flappybrid/game.dart';
import 'package:example/flash/homepage.dart';
import 'package:example/screens/landing.dart';
import 'package:example/slide/picselector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lottie/lottie.dart';

import '../lpc/lpc_game.dart';
void _displayAd() {}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    late AssetsAudioPlayer _assetsAudioPlayer;

    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: ('FututraBold'),
        primarySwatch: Colors.green,
      ),
      home: const Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  _Splash2 createState() => _Splash2();
}

class _Splash2 extends State<Splash2> {
  late AssetsAudioPlayer _assetsAudioPlayer;

  @override
  void initState() {
    _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.open(
        Audio('assets/bgm.mp3')
    );
    _assetsAudioPlayer.playOrPause();

    super.initState();
    Timer(const Duration(seconds: 8), () => Navigator.push(context, MaterialPageRoute(builder: (context) => first())));
  }
  @override
  void dispose() {
    _assetsAudioPlayer;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const Color black = Color(0xFF000000);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
        body: Container(
          child: Lottie.asset(
            'assets/space_jam.zip',
            height: height,width: width,
            fit: BoxFit.fill,
          ),
        )


    );
  }
}