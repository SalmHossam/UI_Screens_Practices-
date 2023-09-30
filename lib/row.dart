import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class column extends StatelessWidget {
  columnModel r;
  column(this.r);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(r.image,width: 60,height: 60,),
        Text(r.txt,style: TextStyle(
          color: Colors.black
        ),),
      ],
    );
  }
}
class columnModel{
  String txt;
  String image;
  columnModel(this.image,this.txt);
}