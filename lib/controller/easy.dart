import 'package:flutter/material.dart';

List<Widget> numel = [];///lista que vai armazenar os widgets Draggable e retornar para a numel2
List<dynamic> act = [];///lista para verificar a posição atual de numel
List<String> corret = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","0"]; ///forma correta da lista para ganhar o jogo
List<Widget> numel2 = []; ///lista que vai armazenar os widgets DragTarget contendo Draggable e retornar para a tela inicial

returnlist() {
    ///Adiciona na lista os widgets Draggable
    if (numel.isEmpty){
      for (int x = 0; x<=15; x++){
        numel.add( 
            Draggable(
            data: x,
            child: Container(child: Text("$x"), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
            feedback: Container(child: Text("$x"), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.teal[100], margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
            childWhenDragging: Container(child: Text("  "), alignment: Alignment.center, padding: const EdgeInsets.all(10), color: Colors.white, margin: const EdgeInsets.only(left: 2, right: 2, top: 2, bottom: 2)),
            key: Key("$x"),
            ),
        );
      }
      numel.shuffle();
    }
    
    ///Adiciona na lista numel2 os Widgets DragTarget contendo numel como filho
    for (int y = 0; y<=15; y++){
      numel2.add(
        DragTarget(
          builder: (context, List<int> candidatedata, rejectData) {
            return numel[y];
          },
          ///recebe o data do Draggable e troca de posição. Aqui ainda está incompleto, preciso trocar de posição de acordo com a lógica
          onAccept: (data){
              if (data%2 !=0){
                print("errado");
                return returnlist();
              }else {
                print("certo");
                return returnlist();
              }
            },
            ///esta função é chamada quando o onAccept acontece
            onAcceptWithDetails: (data){
            print("$numel.runtimeType"); 
            print(act);
            return true;
            },
        )
      ); 
    }

    ///For de teste, pra saber onde os elementos estao no GridWiew
    for (int temp = 0; temp<=15; temp++){
      act.add(numel[temp].key); 
    }
    
    return numel2;
}
