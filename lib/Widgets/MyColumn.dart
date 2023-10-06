import 'package:flutter/cupertino.dart';

class MyColumn extends StatelessWidget {
  MyColumnModel c;
  MyColumn(this.c);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(c.image),
            Text(c.txt),
          ],
        ),
        Text(c.txt2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
      ],
    );
  }
}
class MyColumnModel{
  String image;
  String txt;
  String txt2;
  MyColumnModel(this.txt,this.image,this.txt2);
}

