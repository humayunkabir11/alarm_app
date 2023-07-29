import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/alart_box/alart_box_screen.dart';
import 'package:alarm_app/view/screen/sleep_schedule_Edit/sleep_shedule.dart';
import 'package:alarm_app/view/widgets/container/custom_container.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button/custom_outline_button.dart';

class DeleteAlarmScreen extends StatefulWidget {
  const DeleteAlarmScreen({super.key});

  @override
  State<DeleteAlarmScreen> createState() => _DeleteAlarmScreenState();
}

class _DeleteAlarmScreenState extends State<DeleteAlarmScreen> {
  bool isSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Stack(
        children: [
        const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSmallText(
                  top: 50,
                  text: "Alarm List ",
                ),
                CustomContainer(
                  timeText: "12:00",
                  bgColor: AppColors.secondaryColor,
                  boxHeight: 24,
                ),
                CustomContainer(
                  topTxt: "Today",
                  bottomText: "Start office work",
                  bgColor: AppColors.secondaryColor,
                  boxHeight: 24,
                ),
                CustomContainer(
                  topTxt: "Today",
                  bottomText: "Start office work",
                  bgColor: AppColors.secondaryColor,
                  boxHeight: 24,
                ),
                CustomContainer(
                  topTxt: "Today",
                  bottomText: "Start office work",
                  bgColor: AppColors.secondaryColor,
                  boxHeight: 24,
                ),
                CustomContainer(
                  topTxt: "Today",
                  bottomText: "Start office work",
                  bgColor: AppColors.secondaryColor,
                  boxHeight: 24,
                ),

              ],
            ),
          ),
        ),
      ),

      // alarm delete button
      Align(
        alignment: Alignment.bottomCenter,
        child: CustomOutlineButton(
          buttonText: "Delete this alarm",
          borderRadius: 16,
          buttonBgColor: AppColors.orangeButtonColor,
          buttonTextColor: AppColors.orangeButtonTextColor,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SleepScheduleEdit()));
            showDialog(context: context, builder: (context){
              //   Alert dialog box
              return const AlertDialogBoxScreen();
            });
          },
        ),
      ),
      ],
    ),
        ),
      ),
    );
  }
}
