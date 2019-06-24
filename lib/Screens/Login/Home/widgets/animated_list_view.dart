import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 8,index: 8),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 7,index: 7),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 6,index: 6),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 5,index: 5),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 4,index: 4),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 3,index: 3),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 2,index: 2),
        ListData(title: "Estudar Flutter",subtitle: "Com o curso do Daniel Ciofi",image: AssetImage("images/perfil.png"),margin: listSlidePosition.value * 1,index: 1),
        ListData(title: "Fala rapeize",subtitle: "Estudando mesmo o estudado",image: AssetImage("images/perfil.png"),margin:listSlidePosition.value * 0,index: 0,),
      ],
    );
  }
}
