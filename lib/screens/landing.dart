import 'package:example/flash/homepage.dart';
import 'package:example/lpc/lpc_game.dart';
import 'package:example/slide/picselector.dart';
import 'package:flutter/material.dart';
void _displayAd() {}

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Select'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.greenAccent      ,
        body: Padding(padding: EdgeInsets.all(20),
        child: Container(alignment: Alignment.center,
          decoration:  const BoxDecoration(
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                ),
               onPressed: (){_navTo(context, LPCGame());},
                  child: Text("Fight With Monsters")),
              SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PicSelector(_displayAd)
                  )

                  );
          },
                  child: Text("Puzzle Game")),
              SizedBox(height: 20,),
              
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("Knowledge booster")),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
void _navTo(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

