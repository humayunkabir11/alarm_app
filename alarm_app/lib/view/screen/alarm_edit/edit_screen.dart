import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/delete/delete_alarm_list.dart';
import 'package:alarm_app/view/widgets/button/custom_outline_button.dart';
import 'package:alarm_app/view/widgets/selectdays/custom_select_days.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/sound_Container/custom_alarm_sound.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';
import 'package:alarm_app/view/widgets/top_row/custom_top_row.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  List days = ["Mon","Tue","Wed"," Thu","Fri","Sat","Sun"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top RoW
                CustomTopRow(),
               SizedBox(height: 16,),

               // Alarm clock
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 300,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Color(0xffF2F2F2),

                 ),
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Repeat',style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Weekend",style: TextStyle(color: Color(0xff8D93A3),fontSize: 14)),
                  ],
                ),

               // select day
               CustomSelectdays(
                 color: AppColors.grayColor,
               ),

              //text field
              CustomTextField(
                label: "Alarm Name",
              ),

                const SizedBox(height: 10,),
                const CustomAlarmSound(),
                const SizedBox(height: 16,),
                const CustomSmallText(text: "Alarm Volume",),
                const SizedBox(height: 16,),
                const LinearProgressIndicator(
                  backgroundColor: Color(0xffF5F5F5),value: 0.7,
                  minHeight: 5,
                ),
                const SizedBox(height: 20,),

                CustomOutlineButton(
                  buttonText: "Delete this alarm",

                 borderRadius: 16,
                 buttonBgColor: AppColors.orangeButtonColor,
                  buttonTextColor: AppColors.orangeButtonTextColor,
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>DeleteAlarmScreen()));
                 },
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
