import 'dart:math';

import 'package:flutter/material.dart';
import '../main.dart';
import '../controller/easy.dart';

class Inicial extends State<Principal> {

List<String> correctform = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"," "];

@override
void initState() {
    // TODO: implement setState
    super.initState();
  }
@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      body: GridView.count(
        crossAxisCount: 4, //raiz quadrada do tamanho da lista
        children: returnlist()
      ),
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text("Racha Cuca"),
        centerTitle: true,
      ),
    ),
    
  );
}  
}