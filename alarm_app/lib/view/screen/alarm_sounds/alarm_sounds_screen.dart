import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';

import 'package:alarm_app/view/widgets/top_row/custom_top_row.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AlarmSounds extends StatefulWidget {
  const AlarmSounds({super.key});

  @override
  State<AlarmSounds> createState() => _AlarmSoundsState();
}

class _AlarmSoundsState extends State<AlarmSounds> {

  List soundName = ["Silent","Fast and Furious.mp3","Beep","Butterfly","Dragon","Confident","Nokia","Samsung","Samsung"];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 40.0,left: 24,right: 24,),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTopRow(
                  text: "Alarm Sound",
                ),
                const CustomTextField(
                  hintText: "Add New",
                  hintFontWeight: FontWeight.w600,
                  hintColor: AppColors.blackColor,
                  hintTextSize: 24,
                  icon: Icons.add,
                  iconColor: AppColors.blackColor,
                  iconSize: 24,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomSmallText(
                  top: 20,
                  text: "Sound Device",
                  textColor: AppColors.grayTextColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                      itemCount: soundName.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedItem = index;
                              });
                            },
                            child: Container(

                              // width: MediaQuery.of(context).size.width,
                              height: 67.h,
                              width: 67.w,
                              decoration: BoxDecoration(
                                color: AppColors.grayColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      soundName[index],
                                      style: TextStyle(color: index == selectedItem ? AppColors.blackColor:AppColors.blackColor, fontSize: 16),
                                    ),
                                    Container(
                                      height: 20.h,
                                      width: 20.w,
                                      decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                           border:  Border.all(color: AppColors.ashColor,width: 5),
                                          color: index == selectedItem ? AppColors.primaryColor:AppColors.transparentColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



