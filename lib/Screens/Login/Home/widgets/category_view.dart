import 'package:flutter/material.dart';


class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {


  void selectForward(){
    setState(() {
      index++;
    });
  }
  void selectBackward(){
    setState(() {
      index --;
    });
  }

  int index = 0;
  List lista = ["ESTUDOS","A FAZERES","TO DO LIST","DAUNTLESS","BRAU","CSZADA","BORA DBD","NÃO SEI MAIS"];
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed:  index> 0 ? selectBackward:null,
        ),
        Text(lista[index],style: TextStyle(color: Colors.white,fontSize: 25),),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          onPressed: index < lista.length - 1? selectForward : null,
        ),
      ],
    );
  }
}
