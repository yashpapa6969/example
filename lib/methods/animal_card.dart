import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:example/methods/data.dart';

class AnimalCard extends StatelessWidget {
  AnimalInfo animal;
   AnimalCard({required this.animal,this.onPressed});

   final onPressed;

  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));


    return  GestureDetector(
      onTap: onPressed,
      child: Container(

        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: ListView(
          children: <Widget>[
           //animal.iconImage.toString()),
            Container(
              padding: const EdgeInsets.all(100),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
              Image(
              image:  AssetImage(animal.iconImage.toString()),
            fit: BoxFit.fitHeight,
                width: width,
              )

                ],
              ),
            ),



      ]
        )
    )
    );



  }
}


