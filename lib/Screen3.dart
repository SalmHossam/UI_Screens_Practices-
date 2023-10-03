import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatefulWidget {
  static const String routeName="Screen three";

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical:150 ,horizontal:30 ),
          child: Center(
            child: Row(
              children: [
                Image.asset('assets/images/flower.png'),
                Text('AliceCare',style: GoogleFonts.milonga(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),),
              ],
            )
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration:InputDecoration(
                focusColor: Color(0xff5925DC),
                filled: true,
                fillColor: Colors.white,
                prefixIcon:Icon(Icons.search),
                hintText:'Articles,Video,Audio and more,...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff5925DC),)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffD0D5DD)),
                    borderRadius:BorderRadius.circular(15))
              ),
            ),
          ),
          SizedBox(height: 24,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child:Center(
                    child: Text('Discover',style: TextStyle(
                      color: Color(0xff6941C6),
                      fontSize: 20
                    ),),
                  ),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffD6BBFB),
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  child:Center(
                    child: Text('News',style: TextStyle(
                        color: Color(0xff667085),
                        fontSize: 20
                    ),),
                  ),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  child:Center(
                    child: Text('Most Viewed',style: TextStyle(
                        color: Color(0xff667085),
                        fontSize: 20
                    ),),
                  ),
                  width: 132,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  child:Center(
                    child: Text('Save',style: TextStyle(
                        color: Color(0xff667085),
                        fontSize: 20
                    ),),
                  ),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffE4E7EC),
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Hot Topics',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                  ),),
                ),
                Spacer(),
                Text('See all',style: TextStyle(
                  color: Color(0xff5925DC),
                  fontWeight: FontWeight.bold,
                  fontSize: 17
                ),),
                Icon(Icons.arrow_forward_ios,
                    color: Color(0xff5925DC))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                   Stack(
                     children: [
                       Image.asset('assets/images/img_16.png',width: 326,height: 160,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment:CrossAxisAlignment.start,
                           children: [
                             SizedBox(height: 90,),
                             Container(
                               child: Text('SELF-CARE',style: TextStyle(color: Color(0xff912018)),),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(2),

                                   color: Color(0xffFEF0C7)
                               ),
                             ),
                             Column(
                               children: [
                                 Text('How to take care of Menstrual ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                 Text('  Hygiene during Menstrual Cycle',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
                               ],
                             )

                           ],
                         ),
                       )
                     ],
                   ) ,
                  SizedBox(width: 20,),
                  Stack(
                    children: [
                      Image.asset('assets/images/img_17.png',width: 326,height: 160,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 90,),
                            Container(
                              child: Text('CYCLE',style: TextStyle(color: Color(0xff912018)),),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),

                                  color: Color(0xffFEE4E2)
                              ),
                            ),
                            Column(

                              children: [
                                Text('How to take care of Menstrual ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                Text('  Hygiene during Menstrual Cycle',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
                              ],
                            )

                          ],
                        ),
                      )
                    ],

                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Get Tips',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19
                  ),),
                ),
                Spacer(),
                Text('See all',style: TextStyle(
                    color: Color(0xff5925DC),
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
                Icon(Icons.arrow_forward_ios,
                    color: Color(0xff5925DC))
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 326,
            height: 196,
            decoration: BoxDecoration(
              color: Color(0xffF2F4F7),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Image.asset('assets/images/Doc.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text('Contact with Doctors &',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17),),
                    Text('get suggestions',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17),),
                    Text('Contact now and get ',style: TextStyle(fontSize: 17),),
                    Text('experts insights',style: TextStyle(fontSize: 17),),
                    SizedBox(height: 20,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Veiw Details',style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      decoration: BoxDecoration(color: Color(0xff7F56D9),borderRadius: BorderRadius.circular(15)),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Cycle Phases and Period',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),),
                ),
                Spacer(),
                Text('See all',style: TextStyle(
                    color: Color(0xff5925DC),
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                ),),
                Icon(Icons.arrow_forward_ios,
                    color: Color(0xff5925DC))
              ],
            ),
          ),

        ],
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
          selectedItemColor: Color(0xff6941C6),
          elevation: 20,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),
                label: "Today", backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/img_18.png')),
                label: "Insights", backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),
                label: "Chat", backgroundColor: Colors.white
            ),
          ]

      ),
    );
  }
}
