import 'package:alarm_app/view/screen/alarm/alarm_list_screen.dart';
import 'package:flutter/material.dart';

import '../alarm_creation/alarm_creation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "08.58",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " AM",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(height: 10),

              const Text("Bangladesh (GMT+6)"),
              const SizedBox(height: 30),
             Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black38)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Adjust your real time"),
                        const SizedBox(height: 8),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "12.00",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                              text: " AM",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Switch(value: isSwitch,onChanged: (value){
                        setState(() {
                          value = isSwitch;
                        });
                      }),
                    ),
                  ],
                ),
              ),

             const SizedBox(height: 28,),
               const Text("Next Alarm",style: TextStyle(fontSize: 10,color: Colors.grey),),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                 border: Border.all( color: Colors.black38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(

                          children: [
                            Container(
                              height:10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(width: 7,),
                            Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)

                          ],
                        ),
                        SizedBox(height: 22,),
                        RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "10.00",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                              TextSpan(text: "AM",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            ]
                        )),
                        const Text("need to go to gym exercise")

                      ],
                    ),
                    SizedBox(
                      child: Switch(value: isSwitch,onChanged: (value){
                      setState(() {
                        value = isSwitch;
                      });
                      }),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 28,),

              const Text("Notification",style: TextStyle(fontSize: 10,color: Colors.grey),),
              const SizedBox(height: 8,),
              const Text("182 Until ",style: TextStyle(fontSize: 15,color: Colors.black),),
              const SizedBox(height: 8),
              const Text("Honey birthday",style: TextStyle(fontSize: 10,color: Colors.grey),),



            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Add new Alarm ',style: TextStyle(fontSize: 15,color: Colors.black)),
              const SizedBox(width: 15,),
              FloatingActionButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add,size: 35,color: Colors.white,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const AlarmCreation()));
                  })
            ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor:const Color(0xff252118),
          selectedItemColor: const Color(0xff256BFD),
          items: const [
          BottomNavigationBarItem(
               label: "clock",
              icon: Icon(Icons.watch_later_outlined,),),
          BottomNavigationBarItem(
              label: "Alarm ",
            icon: Icon(Icons.alarm_add_outlined),),
          BottomNavigationBarItem(icon: Icon(Icons.watch),label: "Stop watch"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
        ],),
      ),
    );
  }
}
