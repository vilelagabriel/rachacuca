import 'package:flutter/material.dart';

List<Widget> numel = [];
List<Widget> numel2 = [];
List<Widget> numel3 = [];
List<int> dt = [];
List<dynamic> act = [];
List<String> corret = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","0"];

  returnlist() {
    for (int x = 0; x<=15; x++){
      dt.add(x);
      numel.add(
        Draggable(
          data: dt,
          child: Container(child: Text("$x"), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
          feedback: Container(child: Text("$x"), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
          childWhenDragging: Container(child: Text("  "), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.white, margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
          key: Key("$x"),
        ),
      );
      
    }

    numel.removeAt(0);

    numel.add(
        Draggable(
          data: dt[0],
          child:Container(child: Text("  "), alignment: Alignment.center, padding: const EdgeInsets.all(10),color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
          feedback: Container(child: Text("  "), alignment: Alignment.center, padding: const EdgeInsets.all(10),color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
          key: Key("0"),
        )
      );

    numel.shuffle();


    for (int temp = 0; temp<=15; temp++){
      act.add(numel[temp].key); 
    }
  
    
    print(act);
    return numel;

}