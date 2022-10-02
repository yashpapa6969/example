import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/methods/cestom_header.dart';
import 'package:example/methods/data.dart';
class DetailPage extends StatelessWidget {
   DetailPage({required this.animal});
   AnimalInfo animal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:  Text(animal.name.toString(),
              style: TextStyle(color:Colors.black,fontSize: 30),),
            centerTitle: true,
            elevation: 0,


          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 300,
 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                  ),
                  child: GestureDetector(
                    child: Center(
                    child: Hero(
                      tag: animal.iconImage.toString(),
                      child: Image(
                        image: AssetImage(animal.iconImage.toString()),
                      )
                    ),
                    ),
                    onTap: (){
                      Get.back();
                    },
                  ),
                ),
              ),
              Container(
                height: 300,
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Header(text: animal.name.toString(),),
                        SubHeader(text: animal.paragraph.toString()),


                      ],

                ),
              ),
                )
              )

            ],
          )
          ),
          );

  }
}
