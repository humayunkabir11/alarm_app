
import 'package:alarm_app/view/screen/delete/delete_alarm_list.dart';
import 'package:flutter/material.dart';

import '../alarm_edit/edit_screen.dart';

class AlarmListScreen extends StatefulWidget {
  const AlarmListScreen({super.key});

  @override
  State<AlarmListScreen> createState() => _AlarmListScreenState();
}

class _AlarmListScreenState extends State<AlarmListScreen> {
  bool  isSwitch = false;
  bool isSwitch1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text("Alarm List",style: TextStyle(color: Color(0xff252118),fontSize: 18,),),
             const SizedBox(height: 16,),
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
                             decoration: const BoxDecoration(
                                 color: Colors.black,
                                 shape: BoxShape.circle
                             ),
                           ),
                           const SizedBox(width: 7,),
                           const Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)

                         ],
                       ),
                       const SizedBox(height: 22,),
                       RichText(text: const TextSpan(
                           children: [
                             TextSpan(text: "01.00",style: TextStyle(
                                 fontSize: 30,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold
                             ),),
                             TextSpan(text: "PM",
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
                         isSwitch=value;
                       });
                     }),
                   )
                 ],
               ),
             ),
             const SizedBox(height:16 ,),
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));
               },
               onLongPress: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>DeleteAlarmScreen()));
               },
               child: Container(
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
                               decoration: const  BoxDecoration(
                                   color: Colors.black,
                                   shape: BoxShape.circle
                               ),
                             ),
                             const SizedBox(width: 7,),
                             const Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)
                           ],
                         ),
                        const SizedBox(height: 22,),
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
                         const Text("Week up for office")

                       ],
                     ),
                     SizedBox(
                       child: Switch(
                           value: isSwitch1,onChanged: (value){
                         setState(() {
                             isSwitch1 = value;
                         });

                       }),
                     )
                   ],
                 ),
               ),
             ),

           ],
         ),
       ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
