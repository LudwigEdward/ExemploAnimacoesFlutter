import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final EdgeInsets margin;
  final int index;

  ListData({this.title, this.subtitle, this.image, this.margin,this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        final snackBar = SnackBar(
          content: Text('Tapped on $index index'),
          duration: Duration(milliseconds: 500),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child:
      Container(
      margin: margin,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(color: Colors.grey, width: 1.0),
              bottom: BorderSide(color: Colors.grey, width: 1.0))),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: image,fit: BoxFit.cover)),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
                SizedBox(height: 5,),
                Text(subtitle,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.grey),textAlign: TextAlign.start,),
              ],
            ),
        ],
      ),
    ),
    );
  }
}
