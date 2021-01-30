import 'package:flutter/material.dart';

class NumofItens extends StatelessWidget {
  var numofelements = [];
  List<Widget> cont = <Widget> [];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    createlist();
    for (var x=0; x <= numofelements.length; x++){
      cont.add(Container(
        child: Text("" + numofelements[x]),
        padding: EdgeInsets.all(8),
        color: Colors.blue,
        alignment: Alignment.center,
        )
      );
    }
    
  }

  createlist(){
    for (var i=1; i<=15; i++){
      numofelements.add("$i");
    }
    numofelements.add(" ");
    print (numofelements);
  }
} 