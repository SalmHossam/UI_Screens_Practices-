    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';
    import 'package:quiz/MyColumn.dart';
    import 'package:quiz/Screen1.dart';
import 'package:quiz/Screen3.dart';

    class Screen2 extends StatefulWidget {
      static const String routeName="Screen two";
  @override
  State<Screen2> createState() => _Screen2State();
}
class _Screen2State extends State<Screen2> {
  var index=0;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body:SingleChildScrollView(
             scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Screen1.routeName);
                        },
                        child: Icon(Icons.arrow_back,size: 40,)),
                    SizedBox(width: 10,),
                    Image.asset('assets/images/img_12.png',width: 57,height: 57,),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Hello, Jade',textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,fontSize: 25,),),
                        Text('Ready to Workout ?',textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Badge(
                        label: Text('1'),
                        child: ImageIcon(color: Colors.black,AssetImage('assets/images/icon.png')),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),

                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF8F9FC),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    width: 340,
                    height: 80,
                    child: Row(
                      children: [
                        MyColumn(MyColumnModel(' Heart Rate', 'assets/images/heart.png', '81 BPM')),
                        Spacer(),
                        VerticalDivider(color: Colors.grey,thickness: 1,),
                        Spacer(),
                        MyColumn(MyColumnModel('To-Do', 'assets/images/todo.png', '32,5 %')),
                        Spacer(),
                        VerticalDivider(color: Colors.grey,thickness: 1,),
                        Spacer(),
                        MyColumn(MyColumnModel('Calo', 'assets/images/calo.png', '1000 Cal')),
                      ],
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Workout Programs',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,

                      )),
                ),
                DefaultTabController(
                  length: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TabBar(
                      unselectedLabelColor: Color(0xff667085),
                     labelStyle: TextStyle(fontSize: 17),
                     indicatorColor: Colors.black,
                     labelColor: Color(0xff363F72),
                     isScrollable: true,
                        tabs: [
                          Expanded(
                            child: Tab(
                              text: 'All Type',
                            ),
                          ),
                          Expanded(
                            child: Tab(
                              text: 'Full Body',
                            ),
                          ),

                          Expanded(
                            child: Tab(
                              text: 'Upper',
                            ),
                          ),

                          Expanded(
                            child: Tab(
                              text: 'Lower',
                            ),
                          ),
                    ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 175,
                    width: 390,
                    decoration: BoxDecoration(color:Color(0xffF8F9FC),borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Card(
                                  child:  Text('7 days'),
                                  color: Colors.white,
                                  elevation: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Text('Morning Yoga',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                            Text('Improve mental focus.',style: TextStyle()),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Image.asset('assets/images/clock.png',width:16,height: 16,),
                                Text('30 minutes')
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 48,),
                        Expanded(child: Image.asset('assets/images/yoga.png',width: 178,height: 112,))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 175,
                    width: 390,
                    decoration: BoxDecoration(color:Color(0xffF8F9FC),borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Card(
                                  child:  Text('7 days'),
                                  color: Colors.white,
                                  elevation: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Text('Plank Exercise',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                            Text('Improve posture and stability.',style: TextStyle()),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Image.asset('assets/images/clock.png',width:16,height: 16,),
                                Text('30 minutes')
                              ],
                            ),
                          ],
                        ),
                        Expanded(child: Image.asset('assets/images/yoga3.png',width: 220,height: 130,))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 175,
                    width: 390,
                    decoration: BoxDecoration(color:Color(0xffF8F9FC),borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Card(
                                  child:  Text('3 days'),
                                  color: Colors.white,
                                  elevation: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Text('Plank Exercise',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                            Text('Improve mental focus.',style: TextStyle()),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Image.asset('assets/images/clock.png',width:16,height: 16,),
                                Text('30 minutes'),
                              ],
                            ),
                          ],
                        ),
                        Expanded(child: Image.asset('assets/images/yoga2.png',width: 188,height: 126,))
                      ],
                    ),
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
              selectedItemColor: Color(0xff363F72),
              elevation: 20,
              unselectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_7.png')),
                    label: "", backgroundColor: Colors.white
                ),
                BottomNavigationBarItem(icon: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Screen3.routeName);
                      setState(() {});
                    },
                    child: ImageIcon(AssetImage('assets/images/img_14.png'))),
                    label: "", backgroundColor: Colors.white
                ),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_15.png')),
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
