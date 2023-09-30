import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screen1.dart';
import 'package:quiz/row.dart';

class Screen2 extends StatelessWidget {
  static const String routeName="Screen two";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Screen1.routeName);
            },
            child: Image.asset('assets/images/img_12.png')),
        toolbarHeight: 100,
        title: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,child: Text('Hello, Jade'
              ,style: TextStyle(color: Colors.black,fontSize: 25,),)),
            Align(
                alignment: Alignment.topLeft,child: Text('Ready to Workout ?'
              ,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
              label: Text('1'),
              child: ImageIcon(color: Colors.black,AssetImage('assets/images/icon.png')),
            ),
          ),
        ],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child: Container(
              child: Row(
                children: [
                  column(columnModel('assets/images/img_13.png'.,
                      '81 BPM')),
                  VerticalDivider(color: Colors.black,thickness: 1,),
                  column(columnModel('assets/images/img_13.png',
                      '32,5 %')),
                  VerticalDivider(color: Colors.black,thickness: 1,),
                  column(columnModel('assets/images/img_13.png',
                      '1000 Cal')),
                ],
              ),
               width: 320,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey,borderRadius: BorderRadius.circular(12),

              ),
            ),
          )
        ],
      ),

    );
  }
}
