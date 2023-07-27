import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/button/custom_outline_button.dart';
import 'package:alarm_app/view/widgets/container/custom_container.dart';
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
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              const Text("Bangladesh (GMT+6)"),
              const SizedBox(height: 30),

              const CustomContainer(
                topTxt: "Adjust your bedtime",
                timeText: "12:00",bgColor: AppColors.grayColor,
                amText: "AM",dotHeight: 0,dotWidth: 0,topTextPadding: 0,
              ),

              const SizedBox(
                height: 28,
              ),
              const Text(
                "Next Alarm",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),


              CustomContainer(),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Notification",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "182 Until ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                "Honey birthday",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),

             Row(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Add new Alarm ',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  const SizedBox(width: 10,),

                  CustomOutlineButton(
                    sizeBoxWidth: 60,
                   sizeBoxHeight: 60,
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>AlarmCreation()));},
                  buttonIcon: Icons.add,
                    borderRadius: 16,
                  ),
                ],
              )

            ],
          ),
        ),


        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xff252118),
          selectedItemColor: const Color(0xff256BFD),
          items: const [
            BottomNavigationBarItem(
              label: "clock",
              icon: Icon(
                Icons.watch_later_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Alarm ",
              icon: Icon(Icons.alarm_add_outlined),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.watch), label: "Stop watch"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
