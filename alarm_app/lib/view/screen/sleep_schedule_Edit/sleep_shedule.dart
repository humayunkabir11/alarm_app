import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/alarm_sounds/alarm_sounds_screen.dart';
import 'package:alarm_app/view/widgets/button/custom_outline_button.dart';
import 'package:alarm_app/view/widgets/middle_row/custom_middle_row.dart';
import 'package:alarm_app/view/widgets/selectdays/custom_select_days.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/sound_Container/custom_alarm_sound.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';
import 'package:alarm_app/view/widgets/top_row/custom_top_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SleepScheduleEdit extends StatefulWidget {
   SleepScheduleEdit({super.key});


  @override
  State<SleepScheduleEdit> createState() => _SleepScheduleEditState();
}

class _SleepScheduleEditState extends State<SleepScheduleEdit> {
  List days = ["Mon","Tue","Wed"," Thu","Fri","Sat","Sun"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 20.0,horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTopRow(
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
              const CustomMiddleRow(
                  text1: "Repeat",
                  text2: "daily",
                ),
                const SizedBox(height: 20,),

               CustomSelectdays(),
                const CustomTextField(
                  label: "Add Alarm",
                ),
                const CustomAlarmSound(),

                 const CustomSmallText(
                 bottom: 20,
                 text: "Alarm Volume",
                  textColor: AppColors.grayTextColor,
                ),
                 const LinearProgressIndicator(
                  backgroundColor: Color(0xffF5F5F5),value: 0.7,
                  minHeight: 5,
                ),
                const SizedBox(height: 25,),
                 CustomOutlineButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const AlarmSounds()));},
                  buttonBgColor:  AppColors.orangeButtonColor,
                  buttonTextColor: AppColors.orangeButtonTextColor,
                  buttonText: "delete this Schedule",
                )

              ],

            ),
          ),
        ),
      ),
    );

  }
}



