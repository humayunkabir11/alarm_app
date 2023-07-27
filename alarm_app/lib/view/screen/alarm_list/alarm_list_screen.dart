
import 'package:alarm_app/utils/color.dart';

import 'package:alarm_app/view/widgets/container/custom_container.dart';
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

             // Container
             CustomContainer(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));} ,
             onLongPress: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));} ,
              timeText: "01:00",
               amText: "PM",

             ),
             CustomContainer(
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));} ,
               onLongPress: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>EditScreen()));} ,
               bgColor: AppColors.greenColor,
               bottomText: "wake up for office",
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
