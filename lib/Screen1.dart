import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Screen2.dart';
import 'package:quiz/row.dart';

class Screen1 extends StatefulWidget {
  static const String routeName="Screen one";

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int index=0;
  List<Widget>tabs=[
    Screen2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        title: Align(
            alignment: Alignment.topLeft,child: Text('Moody'
          ,style: TextStyle(color: Colors.black,fontSize: 25,),)),
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
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 24,horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                Text('Hello,',style:
                TextStyle(color: Colors.black,fontSize: 30)),
                Text('Sara Rose',style: TextStyle(
                  color:Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 30
                ),)
              ],
            ),
            Align(
               alignment: FractionalOffset.topLeft,
              child: Text('How are you feeling today?,',style:
              TextStyle(color: Colors.black,fontSize: 20)),
            ),
           SizedBox(height: 15,),
           Row(
             children: [
               column(columnModel('assets/images/img.png',
                   'Love')),
               SizedBox(width: 25,),
               column(columnModel('assets/images/img_1.png',
                   'Cool')),
               SizedBox(width: 25,),
               column(columnModel('assets/images/img_2.png',
                   'Happy')),
               SizedBox(width: 25,),
               column(columnModel('assets/images/img_3.png',
                   'Sad')),
             ],
           ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Features',style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                    fontSize: 30
                ),),
                Spacer(),
                Text('See more',style: TextStyle(
                  color: Colors.teal
                ),),
                Icon(Icons.arrow_forward_ios,color: Colors.teal,)
              ],
            ),
            CarouselSlider(items: [
              Image.asset('assets/images/bg.png'),
              SizedBox(width: 10,),
              Image.asset('assets/images/bg.png'),
              SizedBox(width: 10,),
              Image.asset('assets/images/bg.png'),
              SizedBox(width: 10,),
            ], options: CarouselOptions()),
            Row(
              children: [
                Text('Exercise',style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  fontSize: 30
                ),),
                Spacer(),
                Text('See more',style: TextStyle(
                    color: Colors.teal
                ),),
                Icon(Icons.arrow_forward_ios,color: Colors.teal,)
              ],
            ),
           Expanded(
             child: Row(
               children: [
                 Expanded(child: Image.asset('assets/images/img_8.png',width: 80,)),
                 SizedBox(width: 15,),
                 Expanded(child: Image.asset('assets/images/img_9.png',width: 80,)),

               ],
             ),
           ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Image.asset('assets/images/img_10.png',width: 80)),
                  SizedBox(width: 15,),
                  Expanded(child: Image.asset('assets/images/img_11.png',width: 80,))
                ],
              ),
            )


          ],
        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {
            });
          },
          backgroundColor: Colors.white,
          iconSize: 24,
          selectedItemColor: Colors.teal,
          elevation: 20,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_7.png')),
                label: "", backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(icon: InkWell(onTap: () {
              Navigator.pushNamed(context, Screen2.routeName);
              setState(() {

              });
            },
                child: ImageIcon(AssetImage('assets/images/img_4.png'))),
                label: "", backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_5.png')),
                label: "", backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_6.png'),),
                label: "", backgroundColor: Colors.white
            ),
          ]

      ),

    );
  }
}
