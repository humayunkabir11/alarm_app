import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/middle_row/custom_middle_row.dart';
import 'package:alarm_app/view/widgets/top_row/custom_top_row.dart';
import 'package:flutter/material.dart';


class SleepScheduleEdit extends StatefulWidget {
   SleepScheduleEdit({super.key});


  @override
  State<SleepScheduleEdit> createState() => _SleepScheduleEditState();
}

class _SleepScheduleEditState extends State<SleepScheduleEdit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomTopRow(
              text: "Set Your Sleep Schedule",
            ) ,
            Container(
              height: 300,
              width:  MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.ashColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.blackColor)
              ),
            ),

            CustomMiddleRow(
              text1: "Repeat",
              text2: "days",
            )

          ],

        ),
      ),
    );

  }
}



